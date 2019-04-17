def continue_menu
    $prompt.select("Continue?") do |menu|
      menu.choice "Yes"
      menu.choice "No"
    end
  end
  
  def continue_choice
    case continue_menu
    when "Yes"
      party_member_choice()
    when "No"
      exit!
    end
  end
  