class Anagram
  def initialize()
    @@ana_counter = 0
    @@word_array = []
  end
  def counter
    counter =  @@ana_counter
  end
  def write_file(input)
    File.write("lib/test.txt", input)
  end

  
  end
end
