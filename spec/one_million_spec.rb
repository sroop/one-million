require 'one_million'

describe 'Prints one to a million in words' do

  context '#number_to_words' do

    it 'converts 1 to one' do
      expect(number_to_words(1)).to eq('one') 
    end

    it 'converts 2 to two' do
      expect(number_to_words(2)).to eq('two')
    end

  end

end