delete '/item/:id' do
    id = params['id']

    delete_item(id)
    redirect '/'
end

get '/item/:id/:name/upgrade' do
    levels = ['Bronze', 'Iron', 'Steel', 'Black', 'Mithril', 'Adamant', 'Rune', 'Dragon']
    id = params['id']
    name = params['name']
    count = 0
    level_index = 0
    levels.each do |level|
        if name.include?(level)
            level_index = count
        else
            count += 1
        end
    end


    # binding.pry
    item = get_inventory_item(id)
    swords = all_swords()
    scimitars = all_scimitars()
    daggers = all_daggers()
    helmets = all_helmets()
    platebodies = all_platebodies()
    platelegs = all_platelegs()

    # binding.pry
    erb :'items/edit', locals: {
        item: item,
        level_index: level_index,
        swords: swords,
        scimitars: scimitars,
        daggers: daggers,
        helmets: helmets,
        platebodies: platebodies,
        platelegs: platelegs
    }

end

put '/item/:name/:id/:xp_required' do
    xp_required = params['xp_required'].to_i
    user_xp = current_user()['xp'].to_i

    id = params['id']
    name = params['name']
    inventory_id = params['inventory_id']
    # binding.pry
    if user_xp >= xp_required
        upgrade = get_upgrade_by_id(name, id)

        upgrade_item(inventory_id, upgrade)

        spend_xp(xp_required, user_xp)
    end

    redirect '/'
end