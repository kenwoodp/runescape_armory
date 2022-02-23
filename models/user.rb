def create_user(first_name, last_name, username, password)
    password_digest = BCrypt::Password.create(password)
    

    run_sql("INSERT INTO users(first_name, last_name, username, password_digest, xp) VALUES($1, $2, $3, $4, $5)", [first_name, last_name, username, password_digest, 0])
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