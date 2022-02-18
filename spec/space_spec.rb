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
      
      p spaces = Space.all

      expect(spaces).to include "Beautiful Country Estate"
      expect(spaces).to include "Desert Island"
      expect(spaces).to include "Standard flat"
      expect(spaces).to include "Palace"

    end
    
  end

end
