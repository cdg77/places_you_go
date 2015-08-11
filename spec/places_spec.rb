require('rspec')
require(' places')

describe(Places) do

  describe('#place') do
    it('take a user input for a place they have been') do
      test_place=Places.new('Portland, Oregon')
      expect(test_places.place()).to(eq('Portland, Oregon'))
    end
  end

end
