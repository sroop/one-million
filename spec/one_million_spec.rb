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

    it 'converts 1001 to one thousand and one' do
      expect(number_to_words(1001)).to eq('one thousand and one')
      expect(thousand_conversion(1001)).to eq('one thousand and one')
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

  context 'words: converts 10000 and any others up to 999999' do

    it 'converts 10000 to ten thousand' do
      expect(number_to_words(10000)).to eq('ten thousand')
      expect(thousand_conversion(10000)).to eq('ten thousand')
    end

    it 'converts 15467 to fifteen thousand four hundred and sixty seven' do
      expect(number_to_words(15467)).to eq('fifteen thousand four hundred and sixty seven')
      expect(thousand_conversion(15467)).to eq('fifteen thousand four hundred and sixty seven')
    end

    it 'converts 999999 to nine hundred and ninety nine thousand nine hundred and ninety nine' do
      expect(number_to_words(999999)).to eq('nine hundred and ninety nine thousand nine hundred and ninety nine')
      expect(thousand_conversion(999999)).to eq('nine hundred and ninety nine thousand nine hundred and ninety nine')
    end

  end

  context 'words: converts 1000000 to one million' do

    it 'converts 1000000 to one million' do
      expect(number_to_words(1000000)).to eq('one million')
    end

  end
end

describe 'Behind the scenes conversion methods' do

  context '#process_number(number, slice_count)' do

    it "converts 10 to ['1', '0']" do
      expect(process_number(10, 1)).to eq(['1', '0'])
    end

    it "converts 345 to ['3', '45']" do
      expect(process_number(345, 2)).to eq(['3', '45'])
    end

    it "converts 1578 to ['1', '578']" do
      expect(process_number(1578, 3)).to eq(['1', '578'])
    end

    it "converts 12578 to ['12', '578']" do
      expect(process_number(12578, 3)).to eq(['12', '578'])
    end

    it "converts 912578 to ['912', '578']" do
      expect(process_number(912578, 3)).to eq(['912', '578'])
    end

  end
end


