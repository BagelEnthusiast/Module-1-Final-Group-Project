def start_random_battle #(party_member)
  #puts "\e[H\e[2J"
  opponent = pick_enemy()
  declare_enemy(opponent)
  party_member = party_member_choice()

  battle_choice(party_member, opponent)
end

def pick_enemy
  alive_enemies = []
  Enemy.all.each do |enemy|
    alive_enemies << enemy if enemy.health > 0
  end
  
  
  new_enemy = alive_enemies.shuffle[0]
  return new_enemy
end

def declare_enemy(enemy)
  puts "\e[H\e[2J"
  bar = TTY::ProgressBar.new("A wild #{enemy.name} attacked you! [:bar]", total: 10)
  10.times do
    sleep(0.1)
    bar.advance(1)
  end
end
