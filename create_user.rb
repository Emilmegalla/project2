require 'bcrypt' #  encrypt the password
require 'pg'  # psql database

email = 'meloonline@gmail.com'
password = 'abcee'

email = 'emailchristian2002@yahoo.com'
password = 'peace'

password_digest = BCrypt::Password.create(password) # This will encrypt the password

sql = "INSERT INTO users (email, password_digest) VALUES ('#{email}', '#{password_digest}');" # This code will take user email & password and will user login ( note The PASSWORD will be encrypted)(and  willbe  converted the password to string)

db = PG.connect(dbname: 'picgallary') # This code to connect to the database
db.exec(sql) # This code to run the database
db.close # This code to close the database

# valedation



# Questions 

when i tired the code it only showed (emailchristian2002@yahoo.com) but not the first email