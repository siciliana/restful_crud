get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create_user' do
  # links to create_user page 
end 

get '/notes' do
  # directs to # full page of user's notes 
end 



# ====== POST =============

post '/create_user' do
  # saves new user info to db
end

post '/create_note' do
  # creates and saves a new note to the db 
end