def max_attack()
    run_sql("SELECT MAX(attack_level) FROM inventory")[0]['max'].to_i
end

def sum_defence()
    run_sql("SELECT SUM(defence_level) FROM inventory")[0]['sum'].to_i
end

def set_health(user_id, health)
    run_sql("UPDATE users SET health = $2 WHERE id = $1", [user_id, health])
end