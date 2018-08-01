class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(value)
    @calculator.push(value)
  end

  def plus
    if( @calculator.size >= 2 )
      return @calculator.push ( @calculator.pop + @calculator.pop )
    else
      raise "calculator is empty"
    end
  end

  def value
    @calculator.last
  end

  def minus
    if( @calculator.size >= 2 )
    num1 = @calculator.pop
   @calculator.push( @calculator.pop - num1 )
   else
       raise "calculator is empty"
   end
  end

 def divide
   if( @calculator.size >= 2 )
   num1 = @calculator.pop
   @calculator.push( @calculator.pop / num1.to_f )
   else
     raise "calculator is empty"
   end
 end

 def times
   if( @calculator.size >= 2 )
     @calculator.push( @calculator.pop * @calculator.pop )
   else
     raise "calculator is empty"
   end
 end

 def tokens (exp)
   token_array = ["+","-","/","*"]
   new_array   = []
   exp         = exp.split(" ")
     exp.each do |x|
       if( token_array.include? x)
         x = x.to_sym
       else
         x = x.to_i
       end
       new_array << x
     end
    new_array
 end

 def evaluate (exp)
 tokens(exp).each do |x|
   if (x == :+ )
    self.plus
   elsif ( x== :- )
    self.minus
   elsif (x == :/ )
    self.divide
   elsif (x == :* )
    self.times
   else
    self.push(x)
   end
 end
 return self.value
 end
end
