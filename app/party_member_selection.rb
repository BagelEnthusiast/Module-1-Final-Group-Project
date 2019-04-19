def party_member_selection
    #puts "\e[H\e[2J"
    lion_alive = true 
    turtle_alive = true
    wolf_alive = true

    if Party_member.find_by_name("Lion").health <= 0
        lion_alive = false
    end
    if Party_member.find_by_name("Turtle").health <= 0
        turtle_alive = false
    end
    if Party_member.find_by_name("Wolf").health <= 0
        wolf_alive = false
    end

    if lion_alive == false && turtle_alive == false && wolf_alive == false
        lose_game()
    end



    $prompt.select("Choose your party member") do |menu|
        menu.choice "Lion" if lion_alive
        menu.choice "Turtle" if turtle_alive
        menu.choice "Wolf" if wolf_alive
    end
end


def party_member_choice
    case party_member_selection
    when "Lion" 
        chosen = Party_member.find_by_name("Lion")
        chosen
    when "Turtle"
        chosen = Party_member.find_by_name("Turtle")
        chosen
    when "Wolf"
        chosen = Party_member.find_by_name("Wolf")
        chosen
    end
end


