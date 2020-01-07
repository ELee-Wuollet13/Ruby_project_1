class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter, :result)
  def initialize(inputA, inputB)
    @inputA = inputA.downcase.gsub(/([^a-z])/, "")
    @inputB = inputB.downcase.gsub(/([^a-z])/, "")
  end

  def is_word()
    if @inputA[/(['aeiou'])/] && @inputB[/(['aeiou'])/]
    else
      return "not a real word"
    end
  end

  def is_length
    if @inputA.length != @inputB.length()
      return "not an Anagram"
    end
  end

  def find_ana()
    ana_counter = 0

    @stringB.split("").each do |chr|
      if @inputA.downcase.include?(chr)
        @stringA.split("").each do |chr|
          if @inputB.downcase.include?(chr)
            ana_counter += 1
          end
        end
      end
    end
    if ana_counter === 0
      @result = "anti_true"
    elsif ana_counter / inputA.length() != @inputB.length()
      @result = false
    elsif ana_counter / inputA.length() === @inputB.length()
      @result = true
    end
    return @result
  end
end
