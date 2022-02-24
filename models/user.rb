def create_user(first_name, last_name, username, password)
    password_digest = BCrypt::Password.create(password)
    

    run_sql("INSERT INTO users(first_name, last_name, username, password_digest, xp, health) VALUES($1, $2, $3, $4, $5, $6)", [first_name, last_name, username, password_digest, 0, 100])
end

def find_user_by_username(username)
    users = run_sql("SELECT * FROM users WHERE username = $1", [username])

    if users.to_a.count > 0
        users[0]
    else
        nil
    end
end

def find_user_by_id(id)
    users = run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end

def increase_health(user_id, user_xp, price)
    user_health = run_sql("SELECT health FROM users WHERE id = $1", [user_id])[0]['health'].to_i
    if 100 - user_health < 10
        user_health = 100
    else  
        user_health += 10
    end
    run_sql("UPDATE users SET health = $2 WHERE id = $1", [user_id, user_health])

    run_sql("UPDATE users SET xp = $2 WHERE id = $1", [user_id, user_xp -= price])
end

def play_again(id)
    run_sql("UPDATE users SET xp = $2, health = $3 WHERE id = $1", [id, 0, 100])
    run_sql("DELETE FROM inventory")
end