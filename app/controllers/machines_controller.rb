class MachinesController < ApplicationController
  def index
    render json: Machine.all
  end

  def create
    if Current.user.admin
      washer = Machine.new(machine_params)
      washer.washer = true

      dryer = Machine.new(machine_params)
      dryer.washer = false

      if washer.save && dryer.save
        render json: { washer:, dryer: }, status: :created
      else
        render json: { error: 'Could not create machine' }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Only admin can do this action' }, status: :unauthorized
    end
  end

  def update
    machines = Machine.where(vm_pay_id: params[:id])

    if Current.user.admin
      begin
        machines.each do |machine|
          machine.update(machine_params)
        end
        render json: machines, status: :ok
      rescue
        render json: { error: 'Could not update machines' }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Only admin can do this action' }, status: :unauthorized
    end
  end

  private

  def machine_params
    params.require(:machine).permit(:vm_pay_id, :name, :store_id, :street_name, :street_number, :cep, :latitude, :longitude, :monday_opens, :monday_closes, :tuesday_opens, :tuesday_closes, :wednesday_opens, :wednesday_closes, :thursday_opens, :thursday_closes, :friday_opens, :friday_closes, :saturday_opens, :saturday_closes, :sunday_opens, :sunday_close)
  end
end
