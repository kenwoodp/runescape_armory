def get_all_ores()
    run_sql("SELECT * FROM ores")
end

def gain_xp(user_id, xp_gained)
    user_xp = current_user()['xp'].to_i

    user_xp += xp_gained.to_i
    
    run_sql("UPDATE users SET xp = $2 WHERE id = $1", [user_id, user_xp])
end

def clear_xp(id)
    run_sql("UPDATE users SET xp = $2 WHERE id = $1", [id, 0])
end