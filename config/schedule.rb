# whenever shedule config

env :PATH, ENV['PATH']
set :environment, 'development'
set :output, {:error => 'log/cron_error.log', :standard => 'log/cron_stdout.log'}

every 5.minutes do
  runner "LoadOrderBooksJob.perform_later"
end
