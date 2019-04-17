def menu
  $prompt.select("Menu") do |menu|
    menu.choice "New Game"
    menu.choice "Exit"
  end
end

def menu_choice
  case menu
  when "New Game"
    
    party_member_choice()
  when "Exit"
    exit!
  end
end
