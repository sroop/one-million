require 'one_million'

describe 'Prints one to a million in words' do

  context 'words: 1..19' do

    it 'converts 1 to one' do
      expect(number_to_words(1)).to eq('one') 
    end

    it 'converts 2 to two' do
      expect(number_to_words(2)).to eq('two')
    end

    it 'converts 13 to thirteen' do
      expect(number_to_words(13)).to eq('thirteen')
    end

  end

  context 'words: 20, 30, 40...90' do

    it 'convert 20 to twenty' do
      expect(number_to_words(20)).to eq('twenty')
    end

    it 'convert 90 to ninety' do
      expect(number_to_words(90)).to eq('ninety')
    end

  end

  context 'scale: 100' do

    it 'breakdown method converts 100 to 1 with a remainder of 0 by selecting the right scale' do
      expect(choose_scale_and_breakdown(100)).to eq[1, 0]
    end

    xit 'converts 100 to one hundred' do
      expect(number_to_words(100)).to eq('one hundred')
    end

  end

end