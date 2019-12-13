require('rspec')
require('find_ana')


describe(Anagram) do
  describe('#find_ana') do
    it('check if word is an Anagram') do
      test = Anagram.new()
      test.write_file("Beard, Bread")
      test.check_doc
      expect(test.find_ana?).to(eq(true))

    end
  end
end
