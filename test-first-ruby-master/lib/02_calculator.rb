

def add ( num1, num2)
 num1 + num2
end

def subtract( num1, num2)
  diff  =  num2 - num1
  diff.abs
end

def sum (num_array)
  i   = 0
  sum = 0
  while( i < num_array.length )
    sum = sum + num_array[i]
    i += 1
  end
sum
end

def multiply (num_array)
  result = 1
  i      = 0
  while ( i < num_array.length )
    result = result * num_array[i]
    i += 1
  end
result
end

def power ( num1, num2)
  power = 1
  num2.times  {power *= num1}
  power
end

def factorial (num)
  result = 1
  if(num == 0)
    return result
  end
  while ( num > 0)
    result = result * num
    num   -= 1
  end
result
end
