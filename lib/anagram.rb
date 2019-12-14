class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter)
  def initialize(inputA, inputB)
    @inputA = inputA
    @inputB = inputB

  end
  def find_ana?()
    inputA.gsub!(/[^0-9A-Za-z]/, '')
    inputB.gsub!(/[^0-9A-Za-z]/, '')
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
    if ana_counter === @inputA.length()
      return true
    elsif ana_counter === 0
      return "anti_true"
    else
      false
    end

  end

end
