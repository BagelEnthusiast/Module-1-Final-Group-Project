def fight(party_member, opponent)
  run = false

  while party_member.health > 0 && opponent.health > 0
    #select_move(party_member, opponent)
    damage_calc(party_member, opponent)
    if opponent.health > 0
        #select_move()
      damage_calc(opponent, party_member)
    end
    battle_screen(party_member, opponent)
    break if party_member.health <= 0 || opponent.health <= 0
    case battle_menu()
    when "Attack"
    when "Run"
      run = true
      break
    end
  end
  if (party_member.health > opponent.health) && run == false
    battle_win_menu(party_member, opponent)
  else
    battle_lose_menu(party_member, opponent)
  end
end

def damage_calc(attacker, defender)
  roll = rand(1..10)
  damage = ((attacker.attack.to_f * (10.0 / defender.defense.to_f)) + roll.to_f).round
  defender.health -= damage
  defender.save
  puts "#{attacker.name} attacked #{defender.name} for #{damage} damage."
  sleep(2)
end

# def select_move(attacker, defender)
    


#     case move_selection()


# end

# def move_selection
#     $prompt.select("Choose your move") do |menu|
#         menu.choice ""
        
    

# end
