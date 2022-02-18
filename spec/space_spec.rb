require 'space'

describe Space do

  describe '.all' do
    it 'returns a list of spaces' do
      connection = PG.connect(dbname: 'kewtbnb_test')

      result = connection.exec("SELECT * FROM spaces")
      expect(result.map { |space| space['name'] }).to include 'Palace'
      expect(result.map { |price| price['price'] }).to include '2500'

    end
  end

  describe '.all' do
    it 'returns a list of spaces' do
      
      spaces = Space.all
            
      expect(spaces).to include "Beautiful Country Estate-I am Beautiful!-600"
      expect(spaces).to include "Desert Island-An island to yourself!-5000"
      expect(spaces).to include "Standard flat-Not many rats-100"
      expect(spaces).to include "Palace-Roomy-2500"

    end
    
  end

end
