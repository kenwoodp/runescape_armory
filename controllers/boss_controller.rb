get '/fight' do
    attack_level = max_attack()
    defence_level = sum_defence()
    
    max_hit = attack_level * 3
    if defence_level > 0
        boss_max_hit = 30/defence_level
    else
        boss_max_hit = 30
    end
    boss_health = 100

    user_health = current_user()['health']

    erb :'boss/fight', locals: {
        max_hit: max_hit,
        boss_max_hit: boss_max_hit,
        boss_health: boss_health,
        user_health: user_health
    }
end

get '/hit/:boss_health/:max_hit/:user_health/:boss_max_hit' do
    boss_health = params['boss_health'].to_i
    max_hit = params['max_hit'].to_i
    user_health = params['user_health'].to_i
    boss_max_hit = params['boss_max_hit'].to_i
    
    min_hit = max_hit/3
    boss_health -= rand(min_hit..max_hit)

    boss_min_hit = boss_max_hit/3
    user_health -= rand(boss_min_hit..boss_max_hit)

    if boss_health <= 0
        erb :'boss/win'
    elsif user_health <= 0
        erb :'boss/death'
    elsif boss_health > 0 && user_health > 0
        erb :'boss/fight', locals: {
            max_hit: max_hit,
            boss_health: boss_health,
            boss_max_hit: boss_max_hit,
            user_health: user_health
        }
    end

    
end

put '/quit/:user_health' do
    health = params['user_health']
    
    user_id = current_user()['id'].to_i
    set_health(user_id, health)
    redirect '/'
end

put '/play_again' do
    id = current_user()['id'].to_i
    play_again(id)
    
    redirect '/'
end