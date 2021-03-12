# Dependencies



require 'sinatra'
# require 'sinatra/reloader' # To reload the seriver without disconnect
require 'sinatra/reloader' if development?
require 'pg'  # For PSQL
require 'pry' if development?
require 'bcrypt' # Bcrypt function

#This for logging in (sinatra)

def logged_in?()
    if session[:user_id]
      return true
    else 
      return false
    end
  end

  # Connect to the database and request information about the current logged in user
  def current_user

    sql = "SELECT * FROM users WHERE id = $1;"
    
    results = run_sql(sql, [session[:user_id]]) 
    return results.first
  end

# This function will connect and close the database in all sections 
  def run_sql(sql, arr = []) # array is for security feature
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'picgallary'})
    results = db.exec_params(sql, arr)
    db.close
    return results
  end


  # This is Sinatra feature - (((abstracction))) to enable login 
  enable :sessions 



get '/' do
   pics = run_sql("SELECT * FROM pics")

    erb :index, locals: {pics: pics}
end

# this section need to be edited 

get '/share' do
    erb :new_pic
  end
  
  
  post '/pics' do
   
    sql = "insert into pics (title, image_url) values ($1, $2)"
    run_sql(sql, [params[:title], pramas[:image_url]])
  
    redirect '/'
  end



  get '/pics/:id' do
      pic = run_sql("SELECT * FROM pics WHERE id = $1;", [params[:id]])[0]
      erb :pic_setting, locals: {pic: pic}
  end


  
  patch '/pics/:id' do
    params[:id]
    
    run_sql("update pics set title = $1, image_url = $2 where id = $3;", [params[:title], params[:image_url], params[:id]])
  
    # There is no errors handling
    # pic = results[0]

    redirect "/pics/#{params[:id]}"
  
  end
  
  delete '/pics/:id' do

    # tell it to remove a specific record
    run_sql("DELETE FROM pics WHERE id = $1;", [params[:id]])
     

  
    # redirect to another route
    redirect '/'
  end
  
  
  #  '/edit_post'
    get '/pics/:id/edit' do
    
    pic = run_sql("SELECT * FROM pics WHERE id = $1;", [params[:id]])[0]
  
   erb :edit_pic, locals: { pics: pic }
  end
  
  


  get '/login' do

      erb :login
  end
  
  
  
  
  post '/sessions' do

    # authentication

   results = run_sql("SELECT * FROM users WHERE email = '#{params[:email]}';") # this called result and it keep hold of what the function returns. and it will return an array of hashes 

   if results.count == 1 && BCrypt::Password.new(results[0]['password_digest']).==(params[:password]) # This code take ther password from the user and compare it to the recorded password at the database.If the password os incorrect , the code will return flase. 

   # if the both condition are true then it will login ((redirect to the requred page))

  
    # store in the session hash a new key value pair 
    session[:user_id] = results[0]['id']

    redirect ('/')
    
    else
    # no
       erb :login
     end
  
  end


  # Logging out
  delete '/session' do
    session[:user_id] = nil
    redirect'/login'
   # this when logging out , will direct to the login page
  end
  
  delete '/pics/:id' do 
     # protecting condition.(This will redirect the user to the login page if the user is not logged in.)
    redirect '/login' unless logged_in?
  
  
    pic = run_sql("SELECT * FROM pics WHERE id = $1;", [params[:id]])[0]
  
  end


