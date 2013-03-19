require 'db_log'

class HardWorker
  include Sidekiq::Worker
  def perform(name, count)
    ActiveRecord::Base.transaction do
      DBLog.create!(value: "Before sleep")
      sleep 50
      DBLog.create!(value: "After sleep")
    end
  ensure
    DBLog.create!(value: "Exiting")
    Rails.logger.warn "Exiting"
    Sidekiq.logger.warn "Exiting"
  end
end
