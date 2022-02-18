require 'pg'

p "Setting up test database..."

def connect_and_truncate
  connection = PG.connect(dbname: 'kewtbnb_test')

  # Clear the bookmarks table
  connection.exec("TRUNCATE users, accounts, spaces;")
end

def populate_test_database
  connection = PG.connect(dbname: 'kewtbnb_test')

  connection.exec("INSERT INTO accounts (user_name,passwords) 
  VALUES('Will','pw1'), ('Eden','pw2'), ('Tom','pw3'), ('Kyrsten','pw4');")
  
  connection.exec("INSERT INTO spaces (available,price,name,description) 
  VALUES(TRUE,100,'Standard flat','Not many rats'), (TRUE,5000,'Desert Island','An island to yourself!'), (TRUE,2500,'Palace','Roomy'), (TRUE,600,'Beautiful Country Estate','I am Beautiful!');")
  
end
