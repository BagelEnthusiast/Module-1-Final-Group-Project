def battle_win_menu(party_member, opponent)
  puts "\e[H\e[2J"

  stat_update_win(party_member, opponent)

  new_p_health = party_member.perm_health += 10

  new_o_health = opponent.perm_health -= 10

  puts "You Won! #{party_member.name}'s health is now #{new_p_health}. #{opponent.name}'s
    health is now #{new_o_health}"
end

def battle_lose_menu(party_member, opponent)
  puts "\e[H\e[2J"

  stat_update_lose(opponent)

  puts "You lose. #{opponent.name}'s health is now #{opponent.perm_health}'"

  continue_choice()

end
