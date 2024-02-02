class OpenMachineJob < ApplicationJob
  queue_as :default

  def perform(machines)
    machines.each do |machine|
      machine.open!
    end

    next_week = Time.at(((Time.now + 604800).to_f / 60).round * 60)
    OpenMachineJob.set(wait_until: next_week).perform_later(machines)
  end
end
