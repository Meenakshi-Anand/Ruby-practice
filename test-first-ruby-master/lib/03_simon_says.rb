def echo ( string )
  string
end

def shout ( string )
  string.upcase
end

def repeat ( string, num = 2)
  new_string = ""
  i          = 0
  if ( num == nil )
    num = 2
  end
  while ( i < num )
    new_string = new_string + " " + string
    i += 1
  end
  new_string.strip
end

def start_of_word ( string, length)
 chars        = string.chars
  start_word  = ""
  i           = 0
  while ( i < length )
  start_word = start_word + chars[i]
  i  += 1
  end
start_word
end

def first_word (string)
  array = string.split
  return array[0]
end

def titleize(string)
little_words = ["is","of","an","are","and","was","were","with","the","on","off","over"]
array        = string.split
i            = 0
while( i < array.length )
  if( little_words.include? (array[i])   &&  i != 0 )
      array[i] = array[i]
  else
    temp_array    = array[i].chars
    temp_array[0] = temp_array[0].upcase
    array[i]      = temp_array.join
  end
i += 1
end
array.join(" ")
end
