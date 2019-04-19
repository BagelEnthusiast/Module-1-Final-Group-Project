def menu
  $prompt.select("Menu") do |menu|
    menu.choice "New Game"
    menu.choice "Exit"
  end
end

def menu_choice
  case menu
  when "New Game"
    restart_game()
    start_random_battle()
  when "Exit"
    exit!
  end
end
