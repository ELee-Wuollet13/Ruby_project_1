class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter, :result)
  def initialize(inputA, inputB)
    @inputA = inputA
    @inputB = inputB

  end
  def find_ana?()
    if @inputA.length != @inputB.length()
      return "not an Anagram"
    end


    ana_counter = 0
    string = @inputA.downcase.split("")
    string.each do |chr|
      if @inputB.downcase.include?(chr)
        puts "yes"
        ana_counter += 1
        puts ana_counter
      else
        puts "no"

      end
    end
    if ana_counter != @inputB.length()
      @result = false
    elsif ana_counter === 0
      puts  ana_counter
      @result = "anti_true"
    elsif ana_counter === @inputB.length()
      @result = true
    end
    puts @result
   return @result
  end
end
