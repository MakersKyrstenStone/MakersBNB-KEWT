require 'space'

describe Space do

  describe '.all' do
    it 'returns a list of spaces' do
      connection = PG.connect(dbname: 'kewtbnb_test')
      connection.exec("INSERT INTO spaces (price,name) 
      VALUES(100,'Standard flat'), (5000,'Desert Island'), (2500,'Palace'), (600,'Beautiful Country Estate');")

      result = connection.exec("SELECT * FROM spaces")
      expect(result.map { |space| space['name'] }).to include 'Palace'
      expect(result.map { |price| price['price'] }).to include '2500'

    end
  end

  describe '.all' do
    it 'returns a list of spaces' do
      
      spaces = Space.all

      expect(spaces).to include "Beautiful Country Estate"
      expect(spaces).to include "Desert Island"
      expect(spaces).to include "standard flat"
      expect(spaces).to include "Palace"

    end
    
  end

end
