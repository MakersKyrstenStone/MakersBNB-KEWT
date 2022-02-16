require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'kewtbnb_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE users;")
  # connection.exec("TRUNCATE spaces;")
  connection.exec("TRUNCATE accounts;")
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'kewtbnb_test')

  connection.exec("INSERT INTO accounts (user_name,passwords) 
  VALUES('Will','pw1'), ('Eden','pw2'), ('Tom','pw3'), ('Kysten','pw4');")

end
