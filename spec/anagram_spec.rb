require('rspec')
require('Anagram')


describe(Anagram) do
  describe('#initialize') do
    it('check if word is an Anagram') do
      test = Anagram.new("beard", "bread")
      puts "test"
      expect(test.find_ana?).to(eq(true))
    end
  end

  describe('#initialize') do
    it('check if word is an Anagram despite case') do
      test = Anagram.new("BEard", "bread")
      puts "test"
      expect(test.find_ana?).to(eq(true))
    end
  end
  describe('#initialize') do
    it('check if word is an Antigram') do
      test = Anagram.new("six", "zen")
      puts "test"
      expect(test.find_ana?).to(eq("anti_true"))
    end
  end
  describe('#initialize') do
    it('check if word is an Anagram') do
      test = Anagram.new("beard", "bread")
      puts "test"
      expect(test.find_ana?).to(eq(true))
    end
  end
end
