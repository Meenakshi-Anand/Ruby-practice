
require "time"

def measure ( no_of_times =  0 )
  start_time  = Time.now
  run_time    = ""
  n           = 0
    if ( no_of_times == 0)
      elapsed_time = yield
      return Time.now - start_time
    else
      no_of_times.times {|block| elapsed_time = yield(block)}
      return (Time.now - start_time) / no_of_times
    end
end
