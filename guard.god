require 'god'

God.pid_file_directory = File.dirname(__FILE__)+'/tmp/god_pids/'
God.watch do |w|
  w.name = 'guard'
  w.start = 'guard -w /var/log/icecast/ --guardfile Guardfile -i -p'
  w.dir = File.dirname(__FILE__)
  w.log = File.dirname(__FILE__)+'/log/guard.log'
  w.keepalive
end
