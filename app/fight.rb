def fight(party_member, opponent)
  run = false

  while party_member.temp_health > 0 && opponent.temp_health > 0
    damage_calc(party_member, opponent)
    if opponent.temp_health > 0
      damage_calc(opponent, party_member)
    end
    break if party_member.temp_health <= 0 || opponent.temp_health <= 0
    case battle_menu()
    when "Attack"
    when "Run"
      run = true
      break
    end
  end
  if (party_member.temp_health > opponent.temp_health) && run == false
    battle_win_menu(party_member, opponent)
  else
    battle_lose_menu(party_member, opponent)
  end
end

def damage_calc(attacker, defender)
  roll = rand(1..20)
  damage = (attacker.attack.to_f * (10.0 / defender.defense.to_f)) + roll.to_f
  defender.temp_health -= damage
  defender.save
  puts "#{attacker.name} attacked #{defender.name} for #{damage} damage."
end
