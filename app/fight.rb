def fight(party_member, opponent)
    
    while party_member.temp_health > 0 || opponent.temp_health > 0
    damage_calc(party_member, opponent)
        if opponent.temp_health > 0
            damage_calc(opponent, party_member)
        end

        #battle_choice(party_member, opponent)
    end

    battle_win_menu(party_member, opponent) if party_member.temp_health > opponent.temp_health
    battle_lose_menu(party_member, opponent) if party_member.temp_health < opponent.temp_health

end

def attack
    $prompt.select("Choose your action") do |menu|
        menu.choice "Attack"
        menu.choice "Run"
      end
end

# def attack_choice
#     case attack
#     when
#     when

# end

# def enemy_attack

# end

def damage_calc(attacker, defender)
    damage = attacker.attack * (10/defender.defense)
    defender.temp_health -= damage
    puts "#{attacker.name} attacked #{defender.name} for #{damage} damage."
end
