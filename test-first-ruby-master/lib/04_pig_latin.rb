
def translate(string)

    array  = string.split
    vowels = ['a','e','i','o','u']
    symbol = [".",",","!",";"]
    i      = 0
    sym    = ""

  while ( i < array.length )
    temp_array = array[i].chars
    j          =  0
    capitalise = false
    sym_ther   = false
      while ( j < temp_array.length )
        if ( temp_array[0] == temp_array[0].upcase )
          capitalise    = true
          temp_array[0] = temp_array[0].downcase
        end
        x = 0
        while( x < temp_array.length )
        if ( symbol.include? (temp_array[x]) )
          sym      = temp_array[x]
          sym_ther = true
          temp_array.delete_at(x)
        end
        x += 1
      end
          if ( vowels.include? (temp_array[0]) )
              temp_array.push('ay')
              break
          else
              if ( temp_array[0] + temp_array[1] == 'qu' )
                temp_array.push('qu')
                temp_array.shift()
                temp_array.shift()
              elsif ( temp_array[0] + temp_array[1] + temp_array[2] == 'sch')
                temp_array.push('sch')
                temp_array.shift()
                temp_array.shift()
                temp_array.shift()
              else
                temp_array.push(temp_array[0])
                temp_array.shift()
              end
          end
          j += 1
        end
        if (capitalise == true)
          temp_array[0] = temp_array[0].upcase
        end
        if(sym_ther == true)
          temp_array.push(sym)
        end
      array[i] = temp_array.join
      i += 1
    end
  array.join(" ")
end
