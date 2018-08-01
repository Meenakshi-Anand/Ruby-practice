class Dictionary
attr_accessor :entries
  # TODO: your code goes here!
  def initialize
    @entries = {}
  end

  def add(entry)
    if( entry.is_a? Hash)
      entry.each do |key,value|
        @entries[key]=value
      end
    else
      @entries[entry] = nil
    end
  return @entries
  end

  def keywords
    @entries.keys.sort
  end

  def include?(entry)
    if( @entries.keys.include? entry )
      return true
    end
      return false
  end

  def find (word)
    find_hash = Hash.new
    @entries.each do |key,value|
      if( key.include?word )
        find_hash[key] = value
      end
    end
    return find_hash
  end

  def printable
    final = @entries.sort.map {|key, value| "[#{key}] \"#{value}\""}
      final.join("\n")
  end
end
