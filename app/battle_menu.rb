def battle_menu
  $prompt.select("Choose your action") do |menu|
    menu.choice "Attack"
    #menu.choice "Stats"
    menu.choice "Run"
  end
end

def battle_choice(party_member, opponent)
  battle_screen(party_member, opponent)
  case battle_menu()
  when "Attack"
    fight(party_member, opponent)
  when "Run"
    battle_lose_menu(party_member, opponent)
    #when "Stats"
  end
end

def battle_screen(party_member, opponent)
  table = TTY::Table.new header: ["Stats", party_member.name, opponent.name],
                         rows: [["Health", party_member.health, opponent.health],
                                ["Attack", party_member.attack, opponent.attack],
                                ["Defense", party_member.defense, opponent.defense]]

  puts table.render(:ascii)
  
end
