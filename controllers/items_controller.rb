get '/' do
    shop_items =  all_shop_items()
    inventory_items = all_inventory_items()
    attack_level = max_attack()
    defence_level = sum_defence()
    
    erb :index, locals: {
        shop_items: shop_items,
        inventory_items: inventory_items,
        attack_level: attack_level,
        defence_level: defence_level
    }
end

post '/item/:id/:price/buy' do
    id = params['id']
    price = params['price'].to_i
    
    
    user_id = current_user()['id'].to_i
    user_xp = current_user()['xp'].to_i

    if user_xp >= price
        item = get_item(id)
        if item['name'] == 'Chicken'
            increase_health(user_id, user_xp, price)
        else
            add_to_inventory(item, user_id, price)
            
        end
        # inventory_item = check_existing_inventory_item(item)

        # if inventory_item.to_a.count > 0
        #     increment_item(inventory_item)
        # else
        #     add_to_inventory(item)
        # end
    end
    redirect '/'
end

