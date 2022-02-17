require 'pg'

  describe 'test database' do
    it 'sets up a connection to the database through PG and populates table' do
      connection = PG.connect(dbname: 'kewtbnb_test')

      result = connection.exec("SELECT * FROM accounts")

      expect(result.map { |bookmark| bookmark['user_name'] }).to include 'Eden'

    end

  end
