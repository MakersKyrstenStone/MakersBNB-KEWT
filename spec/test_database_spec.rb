require 'pg'

# describe 'test database' do
#   it 'sets up a connection to the test database' do
#     
#     expect(connection).to eq 
    
#   end
# end

  describe 'test database' do
    it 'sets up a connection to the database through PG and populates table' do
      connection = PG.connect(dbname: 'kewtbnb_test')
      connection.exec("INSERT INTO accounts (user_name,passwords) 
      VALUES('Will','pw1'), ('Eden','pw2'), ('Tom','pw3'), ('Kyrsten','pw4');")

      result = connection.exec("SELECT * FROM accounts")

      expect(result.map { |bookmark| bookmark['user_name'] }).to include 'Eden'

    end

  end







  # PG.connect(dbname: dbname)

