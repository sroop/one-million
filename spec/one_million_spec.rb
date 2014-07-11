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

  context 'words: 21 and any others up to 99' do

    it 'converts 21 to twenty one' do
      expect(number_to_words(21)).to eq('twenty one')
      expect(tens_conversion(21)).to eq('twenty one')
    end

    it 'converts 99 to ninety nine' do
      expect(number_to_words(99)).to eq('ninety nine')
      expect(tens_conversion(99)).to eq('ninety nine')
    end

  end

  context 'words: 100 and any others up to 999' do

    it 'converts 100 to one hundred' do
      expect(number_to_words(100)).to eq('one hundred')
      expect(hundred_conversion(100)).to eq('one hundred')
    end

    it 'converts 346 to three hundred and fourty six' do
      expect(number_to_words(346)).to eq('three hundred and fourty six')
      expect(hundred_conversion(346)).to eq('three hundred and fourty six')
    end

    it 'converts 999 to nine hundred and ninety nine' do
      expect(number_to_words(999)).to eq('nine hundred and ninety nine')
      expect(hundred_conversion(999)).to eq('nine hundred and ninety nine')
    end

  end

  context 'words: 1000 and any others up to 9999' do

    it 'converts 1000 to one thousand' do
      expect(number_to_words(1000)).to eq('one thousand')
      expect(thousand_conversion(1000)).to eq('one thousand')
    end

    it 'converts 4250 to four thousand two hundred and fifty' do
      expect(number_to_words(4250)).to eq('four thousand two hundred and fifty')
      expect(thousand_conversion(4250)).to eq('four thousand two hundred and fifty')
    end

    it 'converts 9999 to nine thousand nine hundred and ninety nine' do
      expect(number_to_words(9999)).to eq('nine thousand nine hundred and ninety nine')
      expect(thousand_conversion(9999)).to eq('nine thousand nine hundred and ninety nine')
    end

  end



end