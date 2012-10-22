namespace :heroku do
  APP = 'devinsantos-events'

  def run(*cmd)
    system(*cmd)
    raise "Command #{cmd.inspect} failed!" unless $?.success?
  end

  def confirm(message)
    print "\n#{message}\nAre you sure? [yN] "
    raise 'Aborted' unless STDIN.gets.chomp.downcase == 'y'
  end

  desc "Deploy app to Heroku"
  task :deploy do
    puts "-----> Pushing..."
    run "git push git@heroku.com:#{APP}.git HEAD:master -f"

    puts "-----> Migrating..."
    run "heroku run rake db:migrate --app #{APP}"

    puts "-----> Restarting..."
    run "heroku restart --app #{APP}"
  end
end