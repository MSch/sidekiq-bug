require 'db_log'

class HardWorker
  include Sidekiq::Worker
  def perform(name, count)
    ActiveRecord::Base.transaction do
      begin
        DBLog.create!(value: "Before sleep")
        sleep 50
        DBLog.create!(value: "After sleep")
      rescue Exception => e
        Sidekiq.logger.warn "Exception caught"
        Sidekiq.logger.warn e
      ensure
        Sidekiq.logger.warn "inner ensure"
      end
    end
  ensure
    DBLog.create!(value: "Exiting")
    Rails.logger.warn "Exiting"
    Sidekiq.logger.warn "Exiting"
  end
end
