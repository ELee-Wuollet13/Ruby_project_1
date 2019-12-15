class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter, :result)
  def initialize(inputA, inputB)
    @inputA = inputA
    @inputB = inputB




  end



  def find_ana?()
    # vowel_array = "a"
    if @inputA.length != @inputB.length()
      return "not an Anagram"
    # elsif @inputA.exclude?(vowel_array) | @inputB.exclude?(vowel_array)
    #   return "enter a real word"

    end




  ana_counter = 0

  stringB = @inputB.downcase.split("")
  stringB.each do |chr|
    if @inputA.downcase.include?(chr)
      stringA = @inputA.downcase.split("")
      stringA.each do |chr|
        if @inputB.downcase.include?(chr)
          puts "yes"
          ana_counter += 1
          puts ana_counter
        else
          puts "no"

        end
      end
    end
  end
  if ana_counter === 0
    @result = "anti_true"
  elsif ana_counter / inputA.length() != @inputB.length()
    @result = false
    puts  ana_counter
  elsif ana_counter / inputA.length() === @inputB.length()
    @result = true
  end
  puts @result
  return @result
end

end
