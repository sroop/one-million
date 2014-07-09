require 'one_million'

describe 'Prints one to a million in words' do

  context '#number_to_words' do

    it 'returns one for 1' do
      expect(number_to_words(1)).to eq('one')
    end

  end

end