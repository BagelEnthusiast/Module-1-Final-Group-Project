def restart_game
    #party members
    Party_member.find_by_name("Lion").update(name: "Lion", health: 50, speed: 9, attack: 12, defense: 7)
    Party_member.find_by_name("Turtle").update(name: "Turtle", health: 70, speed: 3, attack: 4, defense: 20)
    Party_member.find_by_name("Wolf").update(name: "Wolf", health: 60, speed: 7, attack: 10, defense: 10)
    
    #enemies
    Enemy.find_by_name("Dragon").update(name: "Dragon", health: 60, speed: 6, attack: 11, defense: 9)
    Enemy.find_by_name("Whale").update(name: "Whale", health: 70, speed: 2, attack: 6, defense: 12)
    Enemy.find_by_name("Eagle").update(name: "Eagle", health: 50, speed: 15, attack: 20, defense: 4)

end