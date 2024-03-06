class UpdateStatusJob < ApplicationJob
  require 'net/http'
  require 'uri'
  require'json'
  # 'HTTParty'

  queue_as :default

  def perform
    machines = make_get_request('cashless_transactions')

    machines.reverse.each do |machine|
      local_machines = Machine.where(vm_pay_id: machine['machine_id'])
      is_washer = machine['coil'] == "2"
      local_machine = local_machines.find_by(washer: is_washer)

      if local_machine
        local_machine.last_run = machine['occurred_at']
        last_run = Time.parse(machine['occurred_at'])

        if local_machine.washer
          if Time.now - last_run > 35.minute
            local_machine.available = true
          else
            local_machine.available = false
          end
        else
          if Time.now - last_run > 45.minute
            local_machine.available = true
          else
            local_machine.available = false
          end
        end

        local_machine.save
      end
    end

    UpdateStatusJob.set(wait: 1.minute).perform_later
  end

  private

  def make_get_request(endpoint)
    base_url = ENV['VM_PAY_BASE_URL']
    access_token = ENV['VM_PAY_API_KEY']

    uri = URI.join(base_url, "#{endpoint}?access_token=#{access_token}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == 'https')

    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)

    if response.is_a?(Net::HTTPSuccess)
      return JSON.parse(response.body.force_encoding('UTF-8'))
    else
      puts "Request failed with status code: #{response.code}"
      return nil
    end
  end

end
