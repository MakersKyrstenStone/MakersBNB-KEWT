require 'pg'

class Space

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'kewtbnb_test')
     else
      connection = PG.connect(dbname: 'kewtbnb')
     end

     result = connection.exec("SELECT * FROM spaces")
     @spaces = result.map {|space| space ["name"]}
     

    # @spaces = [
    #   "Desert Island",
    #   "standard flat", 
    #   "Palace", 
    #   "Beautiful Country Estate"
    #   ]
  end

end
