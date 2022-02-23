get '/sign_up' do
    erb :'users/new'
end

post '/users' do
    first_name = params['first_name']
    last_name = params['last_name']
    username = params['username']
    password = params['password']

    create_user(first_name, last_name, username, password)

    redirect '/'
end
