class Anagram
  def find_ana

    def initialize()
      @@ana_counter = 0

      @@letter_array = []
    end

    def counter
      counter =  @@ana_counter
    end

    def write_file(inputA, inputB)
      # File.write("lib/test.txt", input)
    end

    def check_doc
      # file = File.open("lib/test.txt")
      string = inputA.downcase
      @@letter_array = string.split("")
    end

    def find_ana?
      bool = false
      @@letter_array.each do |letter|
        if inputB.includes(letter)


          # word.split("") === word.split("").unshift()
          @@ana_counter += 1
          puts ana_counter
        else
          puts "else"
        end

      end

      bool = (@@ana_counter >= 1)
    end

  end

end
