def battle_win_menu(party_member, opponent)
  #puts "\e[H\e[2J"

  puts "You Won! #{opponent.name} has been defeated."
  sleep(4)

  delete_enemy(opponent)

  if Enemy.all.first == nil
    win_game_menu()
  end

  win_stat_choice(party_member, opponent)

  continue_choice()
end

def battle_lose_menu(party_member, opponent)
  # puts "\e[H\e[2J"

  stat_update_lose(opponent)

  puts "You lose. #{opponent.name}'s health is now #{opponent.health}'"
  sleep(4)

  continue_choice()
end
