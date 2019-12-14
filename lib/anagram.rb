class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter)
  def initialize(inputA, inputB)
    @inputA = inputA
    @inputB = inputB

  end
  def find_ana?()
    ana_counter = 0
    string = inputA.split("")
    string.each do |chr|
      if inputB.include?(chr)
        puts "yes"
        ana_counter += 1
        puts ana_counter
      else
        puts "no"

      end
    end
    if ana_counter === @inputA.length()
      return true
    else
      return false
    end

  end

end
