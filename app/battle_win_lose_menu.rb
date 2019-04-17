def battle_win_menu(party_member, opponent)
  puts "\e[H\e[2J"

  win_stat_choice(party_member, opponent)

  puts "You Won! #{opponent.name} has been defeated. #{party_member.name}'s stats:\n
  attack: #{party_member.attack}\n
  health: #{party_member.perm_health}"

  delete_enemy(opponent)

  if Enemy.all.first == nil
    win_game_menu()
  end

  continue_choice()
end

def battle_lose_menu(party_member, opponent)
  puts "\e[H\e[2J"

  stat_update_lose(opponent)

  puts "You lose. #{opponent.name}'s health is now #{opponent.perm_health}'"

  continue_choice()

end
