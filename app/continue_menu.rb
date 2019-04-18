def continue_menu
    $prompt.select("Continue?") do |menu|
      menu.choice "Yes"
      menu.choice "No"
    end
  end
  
  def continue_choice
    case continue_menu
    when "Yes"
      start_random_battle()
    when "No"
      exit!
    end
  end
  