require('rspec')
require('Anagram')


describe(Anagram) do
  describe('#initialize') do
    it('test1 check if word is an Anagram') do
      test = Anagram.new("bread", "beerd")
      puts "test1"
      expect(test.find_ana?).to(eq(true))
    end
  end

  describe('#initialize') do
    it('test2 check if word is an Anagram despite case') do
      test = Anagram.new("bAd","sad")
      puts "test2"
      expect(test.find_ana?).to(eq(true))
    end
  end
  describe('#initialize') do
    it('test3 check if word is an Antigram') do
      test = Anagram.new("fall","sets")
      puts "test3"
      expect(test.find_ana?).to(eq("anti_true"))
    end
  end
  # describe('#initialize') do
  #   it('check if word is an Anagram despite nonletters') do
  #     test = Anagram.new("Beard","B4rea@d")
  #     puts "test4"
  #     expect(test.find_ana?).to(eq(true))
  #   end
  # end
end
