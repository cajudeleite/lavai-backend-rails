class CloseMachineJob < ApplicationJob
  queue_as :default

  def perform(machines)
    machines.each do |machine|
      machine.close!
    end

    next_week = Time.at(((Time.now + 604800).to_f / 60).round * 60)
    CloseMachineJob.set(wait_until: next_week).perform_later(machines)
  end
end
