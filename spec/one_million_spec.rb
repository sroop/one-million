require 'one_million'

describe 'Prints one to a million in words' do

  context '#number_to_words' do

    context '1..19' do

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

    context '20, 30, 40...90' do

      it 'convert 20 to twenty' do
        expect(number_to_words(20)).to eq('twenty')
      end

      it 'convert 90 to ninety' do
        expect(number_to_words(90)).to eq('ninety')
      end

    end

  end

end