stdout_redirect '/var/log/puma/puma.log', '/var/log/puma/puma.log', true

if ENV["RAILS_ENV"] != "development"
  pidfile ENV.fetch("PIDFILE") { "/tmp/my_app.pid" }
  directory ENV.fetch("STACK_PATH") { "." }
  bind ENV.fetch("BIND") { "unix:///var/run/puma/my_app.sock" }
end


