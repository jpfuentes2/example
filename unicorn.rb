worker_processes 1

listen 80, :tcp_nopush => true

pid "/var/run/unicorn.pid"

preload_app true
