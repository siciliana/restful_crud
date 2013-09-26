get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/signup' do
  # links to create_user page 
end 

get '/profile' do
  # @user = User.find(params[:id])
  # @user_notes = @user.notes
  erb :profile
end 

get '/create_note' do
  erb :create_note
end

get '/notes' do
  # directs to # full page of user's notes 
end 

get '/logout' do
  session.clear
  redirect '/'
end


# ====== POST =============

post '/login' do  
  #collects login information and redirects to home page 
  @user = User.find_by_username(params[:username])
  if @user
    if @user.password = params[:password]
      session[:id] = @user.id
      erb :index
    else
      @notpass = "Sweetie Daaahling, go home, you're drunk!"
      redirect '/'
    end 
  else 
      @notpass = "Sweetie Daaahling, go home, you're drunk!"
      erb :index
  end
end 

post '/signup' do
  # saves new user info to db

  if params[:password] == params[:confirm_password]
    new_user = User.create(username: params[:username], password: params[:password])
    session[:id] = new_user.id
    erb :index
  end 
end

post '/create_note' do
  # creates and saves a new note to the db 

  @post = Note.create(title: params[:title], content: params[:content])
  # session[:id] = @new_user.id
  erb :index
end

