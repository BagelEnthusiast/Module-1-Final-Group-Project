def fight(party_member, opponent)
  while party_member.temp_health > 0 && opponent.temp_health > 0
    damage_calc(party_member, opponent)
    if opponent.temp_health > 0
      damage_calc(opponent, party_member)
    end

    battle_choice(party_member, opponent) if party_member.temp_health > 0
  end

  battle_win_menu(party_member, opponent) if party_member.temp_health > opponent.temp_health
  battle_lose_menu(party_member, opponent) if party_member.temp_health < opponent.temp_health
end


def damage_calc(attacker, defender)
  damage = attacker.attack.to_f * (10.0 / defender.defense.to_f)
  binding.pry
  defender.temp_health -= damage
  puts "#{attacker.name} attacked #{defender.name} for #{damage} damage."
end
