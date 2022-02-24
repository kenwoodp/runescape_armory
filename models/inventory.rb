def all_inventory_items()
    run_sql("SELECT * FROM inventory")
end

def delete_item(id)
    run_sql("DELETE FROM inventory WHERE id = $1", [id])
end

def check_existing_inventory_item(item)
    inventory_item = run_sql("SELECT * FROM inventory WHERE name = $1", [item['name']])
    if inventory_item.to_a.count > 0
        inventory_item.to_a
    else
        nil
    end
end

def increment_item(inventory_item)
    # binding.pry
    amount_arr = run_sql("SELECT amount FROM inventory WHERE id = $1", [inventory_item[0]['id']])
    amount = amount_arr[0]['amount'].to_i
    amount += 1
    run_sql("UPDATE inventory SET amount = $2 WHERE id = $1", [inventory_item[0]['id'], amount])
end    

def add_to_inventory(item, user_id, price)
    run_sql("INSERT INTO inventory(name, image_url, amount, attack_level, defence_level) VALUES($1, $2, $3, $4, $5)", [item['name'], item['image_url'], 1, item['attack_level'], item['defence_level']])

    user_xp = current_user()['xp'].to_i

    run_sql("UPDATE users SET xp = $2 WHERE id = $1", [user_id, user_xp -= price])
end

def get_inventory_item(id)
    run_sql("SELECT * FROM inventory WHERE id = $1", [id])[0]
end