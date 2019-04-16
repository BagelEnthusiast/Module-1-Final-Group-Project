def win_menu(party_member, opponent)
    puts "\e[H\e[2J"
    
    new_p_health = party_member.perm_health += 10

    new_o_health = opponent.perm_health -= 10

    puts "You Won! #{party_member.name}'s health is now #{new_p_health}. #{opponent.name}'s
    health is now #{new_o_health}"
end


def lose_menu(party_member, opponent)
    puts "\e[H\e[2J"
    new_p_health = party_member.perm_health -= 10

    new_o_health = opponent.perm_health += 10

    puts "You Lose :( #{party_member.name}'s health is now #{new_p_health}. #{opponent.name}'s
    health is now #{new_o_health}"
end