def start_random_battle#(party_member)
  #puts "\e[H\e[2J"
  opponent = pick_enemy()
  declare_enemy(opponent)
  party_member = party_member_choice()
  
  
  battle_choice(party_member, opponent)
end

def pick_enemy

  new_enemy = Enemy.all.shuffle[0]
  return new_enemy
end

def declare_enemy(enemy)
  puts "\e[H\e[2J"
  puts "Your opponent is #{enemy.name}"
  sleep(3)
end
