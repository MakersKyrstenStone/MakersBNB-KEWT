require 'pg'

class Space

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'kewtbnb_test')
     else
      connection = PG.connect(dbname: 'kewtbnb')
     end

     result = connection.exec("SELECT * FROM spaces")
    
     # @spaces = 
     result.map {|space| space['name'] + "-" + space['description'] + "-" + space['price']}

    end

end
