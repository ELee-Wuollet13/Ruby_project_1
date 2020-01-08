require('rspec')
require('Anagram')


describe(Anagram) do
  describe('#initialize') do
    it('check if word is an Anagram') do
      test = Anagram.new("bread", "beard")
      expect(test.find_ana).to(eq(true))
    end
  end

  describe('#initialize') do
    it('check if word is an Anagram despite case') do
      test = Anagram.new("bAd","bad")
      expect(test.find_ana).to(eq(true))
    end
  end
  describe('#initialize') do
    it('check if word is an Anagram despite case') do
      test = Anagram.new("brgd","brgd")
      expect(test.find_ana).to(eq("not a real word"))
    end
  end
  describe('#initialize') do
    it('check if word is an Antigram') do
      test = Anagram.new("fall","sets")
      expect(test.find_ana).to(eq("anti_true"))
    end
  end
  describe('#initialize') do
    it('check if word is an Anagram despite nonletters') do
      test = Anagram.new("Beard","B4rea@d")
      expect(test.find_ana).to(eq(true))
    end
  end
  describe('#initialize') do
    it('check if word is an Anagram despite nonletters') do
      test = Anagram.new("Church of Scientology", "rich chosen goofy cult")
      expect(test.find_ana).to(eq(true))
    end
  end
end
