class Array
def sum ()
  sum=0
  self.each do |x|
    sum = sum + x
  end
  sum
end

def square()
  square_array = []
  if( self.empty? )
    return []
  else
  self.each do |x|
    x = x * x
   square_array.push(x)
  end
  end
  square_array
end

def square!()
  if( self.empty? )
    return []
  else
  self.collect! do |x|
    x = x * x
  end
  end
end

end
