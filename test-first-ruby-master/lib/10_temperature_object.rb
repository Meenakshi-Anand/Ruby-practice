class Temperature

  # TODO: your code goes here!
  def initialize ( options = {} )
    @options = options
  end

  def self.from_celsius (type)
    self.new( :c => type )
  end

  def self.from_fahrenheit (type)
    self.new( :f => type )
  end

  def in_celsius()
    if( @options.has_key? (:c) )
      temp = @options[:c]
      return temp
    else
      temp = @options[:f]
      temp = (temp-32) * 5.0 / 9.0
      return temp
   end
  end

  def in_fahrenheit ()
    if( @options.has_key? (:f) )
      temp = @options[:f]
      return temp
    else
     temp = @options[:c]
     temp = (temp * 9.0 / 5.0 ) + 32
     return temp
   end
  end
end


class Celsius < Temperature

   def initialize ( num, options = {} )
    @options     = options
    @options[:c] = num
  end

  def in_fahrenheit()
    super
  end

  def in_celsius()
    super
  end

end

class Fahrenheit < Temperature
  def initialize( num, options = {})
    @options    = options
    @options[:f] = num
    end
  def in_fahrenheit()
    super
  end
  def in_celsius()
    super
  end
end
