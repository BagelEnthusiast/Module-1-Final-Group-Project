def battle_win_menu(party_member, opponent)
  
  Battle.create(party_member_id: party_member.id, enemy_id: opponent.id, winner: party_member.name, loser: opponent.name)

  puts "You Won! #{opponent.name} has been defeated."
  sleep(4)

  #delete_enemy(opponent)

  all_dead = true 
  
  Enemy.all.each do |enemy|
    all_dead = false if enemy.health > 0
  end



  if all_dead == true
    win_game_choice()
  end

  win_stat_choice(party_member, opponent)

  continue_choice()
end

def battle_lose_menu(party_member, opponent)
  Battle.create(party_member_id: party_member.id, enemy_id: opponent.id, winner: opponent.name, loser: party_member.name)

  stat_update_lose(opponent)

  puts "You lose. #{opponent.name}'s health is now #{opponent.health} and attack is now #{opponent.attack}'"
  sleep(4)

  continue_choice()
end


