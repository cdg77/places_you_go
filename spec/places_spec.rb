require('rspec')
require('places')

describe(Places) do

  describe('#place') do
    it('take a user input for a place they have been') do
      test_place=Places.new('Portland, Oregon')
      expect(test_place.place()).to(eq('Portland, Oregon'))
    end
  end

  describe('.all') do
    it ('it checks that the array starts as an empty array') do
      expect(Places.all()).to(eq([]))
    end
  end
end
