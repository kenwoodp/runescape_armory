get '/:id/mine' do
    user_id = params['id']
    ores = get_all_ores()

    erb :'xp/mine', locals: {
        ores: ores,
        user_id: user_id
    }
end

get '/:id/:xp/gain' do
    user_id = params['id']
    xp_gained = params['xp']
    gain_xp(user_id, xp_gained)
    ores = get_all_ores()

    erb :'xp/mine', locals: {
        ores: ores,
        user_id: user_id
    } 
end

put '/:id/clear' do
    id = params['id']
    clear_xp(id)

    redirect '/'
end

