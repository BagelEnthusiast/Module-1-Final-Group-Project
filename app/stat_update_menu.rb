def stat_update_win
  $prompt.select("Choose a stat to update") do |menu|
    menu.choice "Attack"
    menu.choice "Health"
  end
end

def win_stat_choice(party_member, opponent)
  case stat_update_win
  when "Attack"
    party_member.attack += 3
    party_member.save
  when "Health"
    party_member.perm_health += 10
    party_member.save
  end
end

def stat_update_lose(opponent)
  opponent.perm_health += 10
  opponent.save
end
