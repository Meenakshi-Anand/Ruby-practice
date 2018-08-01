class Timer
attr_accessor :time_string , :seconds

def seconds
@seconds = 0
end

def time_string
  string_seconds = "00"
  string_minutes = "00"
  string_hours   = "00"
    if ( @seconds/(60*60) > 0 )
      value = @seconds / (60*60)
        if(value < 10)
          string_hours = "0" + value.to_s
          @time_string = "#{string_hours}:00:00"
        else
          @time_string = "#{value}:00:00"
        end
      @seconds=@seconds%(60*60)
    end
    if ( (@seconds/60) > 0)
      value  = @seconds / 60
        if(value < 10)
          string_minutes = "0" + value.to_s
          @time_string   = "#{string_hours}:#{string_minutes}:00"
        else
          @time_string   = "#{string_hours}:#{value}:00"
        end
      @seconds = @seconds %  60
    end
    if ( @seconds < 10 )
        string_seconds = "0" + @seconds.to_s
        @time_string   = "#{string_hours}:#{string_minutes}:#{string_seconds}"
    else ( @seconds > 9 && @seconds < 60)
      @time_string     = "#{string_hours}:#{string_minutes}:#{@seconds}"
    end
end
end
