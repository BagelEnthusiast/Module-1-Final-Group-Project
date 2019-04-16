def start_random_battle
    puts "\e[H\e[2J"
  if Enemy.first == nil
    win_game_menu()
  end

  opponent = pick_enemy()
  declare_enemy(opponent)


 


end

def pick_enemy
  random_number = rand(1..3)
  new_enemy = Enemy.find(random_number)
  return new_enemy
end

def declare_enemy(enemy)
    puts "Your opponent is #{enemy.name}"
end

def fight(party_member, opponent)

end