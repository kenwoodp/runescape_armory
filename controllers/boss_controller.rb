get '/fight' do
    attack_level = max_attack()
    
    max_hit = attack_level * 3
    boss_health = 100

    erb :'boss/fight', locals: {
        max_hit: max_hit,
        boss_health: boss_health
    }
end

get '/hit/:boss_health/:max_hit' do
    boss_health = params['boss_health'].to_i
    max_hit = params['max_hit'].to_i
    
    min_hit = max_hit/3

    boss_health -= rand(min_hit..max_hit)

    if boss_health <= 0
        redirect '/'
    end

    erb :'boss/fight', locals: {
        max_hit: max_hit,
        boss_health: boss_health
    }
end