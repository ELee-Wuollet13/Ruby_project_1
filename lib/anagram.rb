# class Anagram
#
#     def initialize(inputA, inputB)
#       @inputA = inputA
#       @inputB = inputB
#       @@ana_counter = 0
#       @@letter_array = []
#     end
#
#     def counter
#       counter =  @@ana_counter
#       puts counter
#     end
#
#     # def write_file(inputA, inputB)
#     #   # File.write("lib/test.txt", input)
#     # end
#
#     def check_doc
#       # file = File.open("lib/test.txt")
#       string = @inputA.downcase
#       @@letter_array = string.split("")
#       puts letter_array
#     end
#
#     def find_ana?()
#       bool = false
#       @@letter_array.each do |letter|
#
#         if @inputB.includes(letter)
#           puts letter
#           @@ana_counter += 1
#           puts ana_counter
#         else
#           puts "else"
#         end
#
#       end
#
#       bool = (@@ana_counter >= 1)
#       puts bool
#       return bool
#     end
#
#   end
class Anagram
  attr_reader(:inputA, :inputB)
  attr_writer(:ana_counter)
def initialize(inputA, inputB)
  @inputA = inputA
  @inputB = inputB

end
  def find_ana?()
    string = inputA.split("")
    string.each do |chr|
      if inputB.include?(chr)
        puts "yes"
      else
        puts "no"

      end

    end

  end

end
