if ENV["SERF_USER_EVENT"] =~ /deploy-web/
  puts "Starting deploy..."
  puts `git checkout -f master`

  if $?.exitstatus
    unicorn_pid = IO.read("/var/run/unicorn.pid").chomp.to_i
    puts "Sending USR2 to Unicorn PID: #{unicorn_pid}"
    Process.kill "USR2", unicorn_pid
  end
else
  $stderr.puts "Ignoring event %s because it is not a deploy event" % ENV["SERF_EVENT"]
end
