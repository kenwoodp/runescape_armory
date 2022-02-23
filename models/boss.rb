def max_attack()
    run_sql("SELECT MAX(attack_level) FROM inventory")[0]['max'].to_i
end