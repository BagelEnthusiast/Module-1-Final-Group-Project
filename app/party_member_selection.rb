def party_member_selection
    #puts "\e[H\e[2J"
    $prompt.select("Choose your party member") do |menu|
        menu.choice "Lion"
        menu.choice "Turtle"
        menu.choice "Wolf"
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


