def party_member_selection
    puts "\e[H\e[2J"
    $prompt.select("Choose your first party member") do |menu|
        menu.choice "Lion"
        menu.choice "Turtle"
        menu.choice "Wolf"
    end
end


def party_member_choice
    case party_member_selection
    when "Lion"
        x = "Lion"
        chosen = Party_member.find_by_name(x)
        start_random_battle()
    when "Turtle"
    when "Wolf"
    end
end


