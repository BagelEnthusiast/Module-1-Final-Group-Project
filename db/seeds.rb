#party members
lion = Party_member.create(name: "Lion", temp_health: 50, perm_health: 50, speed: 9, attack: 12, defense: 7)
turtle = Party_member.create(name: "Turtle", temp_health: 70, perm_health: 70, speed: 3, attack: 4, defense: 20)
wolf = Party_member.create(name: "Wolf", temp_health: 60, perm_health: 60, speed: 7, attack: 10, defense: 10)

#enemies
dragon = Enemy.create(name: "Dragon", temp_health: 60, perm_health: 60, speed: 6, attack: 11, defense: 9)
whale = Enemy.create(name: "Whale", temp_health: 70, perm_health: 70, speed: 2, attack: 6, defense: 12)
eagle = Enemy.create(name: "Eagle", temp_health: 50, perm_health: 30, speed: 15, attack: 20, defense: 4)

#battles
battle1 = Battle.create(party_member_id: lion.id, enemy_id: dragon.id)

