def battle_menu
    
    $prompt.select("Choose your action") do |menu|
        menu.choice "Attack"
        menu.choice "Run"
    end
end

def battle_choice(party_member, opponent)
    case battle_menu()
    when "Attack"
       fight(party_member, opponent)
    when "Run"
        lose_menu(party_member, opponent)
    end
end

def fight(party_member, opponent)
    random_boolean = [true, false].sample
    win_menu(party_member, opponent) if random_boolean == true
    lose_menu(party_member, opponent) if random_boolean == false
  end


