class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter, :result)
  def initialize(inputA, inputB)
    @inputA = inputA.downcase.gsub(/([^a-z])/, "")
    @inputB = inputB.downcase.gsub(/([^a-z])/, "")
  end

  def find_ana?()
    # vowel_array = ["a", "e", "i", "o", "o", "u", "y"]
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
              # puts "yes"
              ana_counter += 1
              # puts ana_counter
            end
          end
        end
      end
      if ana_counter === 0
        @result = "anti_true"
      elsif ana_counter / inputA.length() != @inputB.length()
        @result = false
        # puts  ana_counter
      elsif ana_counter / inputA.length() === @inputB.length()
        @result = true
      end
      # puts @result
      return @result
  end
end
