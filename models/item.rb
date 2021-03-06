def all_shop_items()
    run_sql("SELECT * FROM general_store_items")
end

def get_item(id)
    run_sql("SELECT * FROM general_store_items WHERE id = $1", [id])[0]
end

def all_swords()
    run_sql("SELECT * FROM swords").to_a
end

def all_scimitars()
    run_sql("SELECT * FROM scimitars").to_a
end

def all_daggers()
    run_sql("SELECT * FROM daggers").to_a
end

def all_helmets()
    run_sql("SELECT * FROM helmets").to_a
end

def all_platebodies()
    run_sql("SELECT * FROM platebodies").to_a
end

def all_platelegs()
    run_sql("SELECT * FROM platelegs").to_a
end

def get_upgrade_by_id(name, id)
    run_sql("SELECT * FROM #{name} WHERE id = $1", [id])[0]
end

def upgrade_item(inventory_id, upgrade)
    run_sql("UPDATE inventory SET name = $2, image_url = $3, attack_level = $4, defence_level = $5, xp_value = $6 WHERE id = $1", [inventory_id, upgrade['name'], upgrade['image_url'], upgrade['attack_level'], upgrade['defence_level'], upgrade['xp_required']])
    
end

def spend_xp(xp_required, user_xp)
    run_sql("UPDATE users SET xp = $2 WHERE id = $1",[current_user()['id'], user_xp -= xp_required])
end