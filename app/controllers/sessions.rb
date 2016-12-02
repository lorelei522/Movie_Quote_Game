get '/sessions/new' do
  erb :"/sessions/new"
end

post '/sessions' do
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = ["Ah Ah Ah you didn't say the magic username or password Ah Ah Ah"]
    erb :'/sessions/new_error'
  end
end

delete '/sessions' do
  if logged_in?
    session.clear
    redirect '/'
  else
    status 404
  end
end
