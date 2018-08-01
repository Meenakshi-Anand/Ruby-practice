class Book
attr_accessor :title
  # TODO: your code goes here!
$special_words=["and","but", "for", "nor", "or", "so","yet","a",
               "the","an","in","of","is","under","over","were","was"]
def title()
  words = @title.split
  if ( words.include? "i" )
    words.each do |i_word|
      i_word.capitalize!
    end
    words = words.join(" ")
    return words.chomp
  else
    words[0].capitalize!
    words.each do |each_word|
      if( $special_words.include? each_word )
        next
      else
        each_word.capitalize!
      end
  end
  words = words.join(" ")
  return words.chomp
  end
end
end
