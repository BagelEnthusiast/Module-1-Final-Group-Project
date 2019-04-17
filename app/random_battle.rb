def start_random_battle(party_member)
  puts "\e[H\e[2J"


  opponent = pick_enemy()
  declare_enemy(opponent)
  battle_choice(party_member, opponent)
end

def pick_enemy
  # random_number = rand(1..3)
  # new_enemy = Enemy.find(random_number)
  # return new_enemy
  

  new_enemy = Enemy.all.shuffle[0]
  return new_enemy
end

def declare_enemy(enemy)
  puts "Your opponent is #{enemy.name}"
end
