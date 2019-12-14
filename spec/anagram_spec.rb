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
    it('check if word is an Anagram') do
      test = Anagram.new("BEard", "bread")
      puts "test"
      expect(test.find_ana?).to(eq(true))
    end
  end
end
