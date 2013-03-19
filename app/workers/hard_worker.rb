class HardWorker
  include Sidekiq::Worker
  def perform(name, count)
    # do something
    ActiveRecord::Base.transaction do
      sleep 50
    end
  end
end
