get '/mine' do
    user_id = session['user_id']
    ores = get_all_ores()

    erb :'xp/mine', locals: {
        ores: ores,
        user_id: user_id
    }
end

post '/:xp/gain' do
    user_id = session['user_id']
    xp_gained = params['xp']
    gain_xp(user_id, xp_gained)
    ores = get_all_ores()
    
    redirect '/mine'
end

put '/clear' do
    id = session['user_id']
    clear_xp(id)

    redirect '/'
end

