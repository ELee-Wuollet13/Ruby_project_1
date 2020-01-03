class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter, :result)
  def initialize(inputA, inputB)
    @inputA = inputA.downcase.gsub(/([^a-z])/, "")
    @inputB = inputB.downcase.gsub(/([^a-z])/, "")
  end

  def find_ana?()
    if @inputA[/(['aeiou'])/] && @inputB[/(['aeiou'])/]
      puts "real word"
    else
      return "not a real word"
    end
      if @inputA.length != @inputB.length()
        return "not an Anagram"
      end

      ana_counter = 0

      stringB = @inputB.split("")
      stringB.each do |chr|
        if @inputA.downcase.include?(chr)
          stringA = @inputA.split("")
          stringA.each do |chr|
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
