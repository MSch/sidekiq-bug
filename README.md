== Sidekiq ActiveRecord Bug

1. Run `tail -f log/development.log`
2. Run `bundle exec sidekiq` in another Terminal tab
3. Run `bundle exec rails runner "HardWorker.perform_async('bob', 5)"`
4. Wait for `begin transaction` in log/development.log
5. Ctrl-C the sidekiq worker
6. Watch how the transaction gets nevertheless commited and not rolled back.
