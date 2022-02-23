get '/' do
    shop_items =  all_shop_items()
    inventory_items = all_inventory_items()
    
    erb :index, locals: {
        shop_items: shop_items,
        inventory_items: inventory_items,
    }
end

post '/item/:id/buy' do
    id = params['id']

    item = get_item(id)
    
    inventory_item = check_existing_inventory_item(item)

    if inventory_item.to_a.count > 0
        increment_item(inventory_item)
    else
        add_to_inventory(item)
    end

    

    redirect '/'
end

