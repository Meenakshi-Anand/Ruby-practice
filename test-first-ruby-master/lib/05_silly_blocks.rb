
def reverser
  to_reverse= yield
  result= ""
  array= to_reverse.split
    array.each do |element|
    result = result + element.reverse + " "
    end
result = result.strip
return result
end

def adder ( to_add =  1)
  num  = yield
  sum  = num + to_add
end

def repeater ( num = 0)
  if ( block_given? && num == 0)
     yield
  elsif( block_given? && num > 0)
    n = 0
    while( n <  num)
      yield
      n += 1
     end
   return n
  else
    puts "No block given"
  end
end
