class MachinesController < ApplicationController
  require 'date'

  def index
    render json: Machine.all
  end

  def create
    if Current.user.admin
      washer = Machine.new(machine_params)
      washer.washer = true

      dryer = Machine.new(machine_params)
      dryer.washer = false

      missing_param = false

      timetable_params.each do |key|
        unless params.keys.include?(key)
          missing_param = true
          render json: { error: "Missing #{key} param" }, status: :bad_request
        end
      end

      if washer.save && dryer.save
        Date::DAYNAMES.each do |day|
          day = day.downcase

          OpenMachineJob.set(wait_until: next_time_for_day(day, params["#{day}_opens"])).perform_later([[washer, dryer]])
          CloseMachineJob.set(wait_until: next_time_for_day(day, params["#{day}_closes"])).perform_later([[washer, dryer]])
        end

        render json: {washer: washer, dryer: dryer}, status: :created unless missing_param
      else
        render json: { error: "Could not create machine" }, status: :unprocessable_entity
      end
    else
      render json: { error: "Only admin can do this action" }, status: :unauthorized
    end
  end

  private

  def machine_params
    params.permit(:vm_pay_id, :name, :store_id, :street_name, :street_number, :cep, :latitude, :longitude)
  end

  def timetable_params
    ['monday_opens', 'monday_closes', 'tuesday_opens', 'tuesday_closes', 'wednesday_opens', 'wednesday_closes', 'thursday_opens', 'thursday_closes', 'friday_opens', 'friday_closes', 'saturday_opens', 'saturday_closes', 'sunday_opens', 'sunday_closes']
  end

  def next_time_for_day(day, hour, minute = 0)
    current_time = Time.now.in_time_zone('America/Sao_Paulo')

    # Find the day of the week for the desired day
    desired_day = case day.downcase
                  when 'sunday' then 0
                  when 'monday' then 1
                  when 'tuesday' then 2
                  when 'wednesday' then 3
                  when 'thursday' then 4
                  when 'friday' then 5
                  when 'saturday' then 6
                  else
                    raise ArgumentError, 'Invalid day'
                  end

    # Calculate the next occurrence for this week if the desired day hasn't passed yet
    if current_time.wday <= desired_day
      next_day = current_time + (desired_day - current_time.wday).days
    else
      # Calculate the next occurrence for next week
      next_day = current_time + ((7 - current_time.wday + desired_day) % 7).days
    end

    Time.new(next_day.year, next_day.month, next_day.day, hour, minute, 0).in_time_zone('America/Sao_Paulo')
  end
end
