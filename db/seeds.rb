#party members
lion = Party_member.create(name: "Lion", health: 50, speed: 9, attack: 12, defense: 7)
turtle = Party_member.create(name: "Turtle", health: 70, speed: 3, attack: 4, defense: 20)
wolf = Party_member.create(name: "Wolf", health: 60, speed: 7, attack: 10, defense: 10)

#enemies
dragon = Enemy.create(name: "Dragon", health: 60, speed: 6, attack: 11, defense: 9)
whale = Enemy.create(name: "Whale", health: 70, speed: 2, attack: 6, defense: 12)
eagle = Enemy.create(name: "Eagle", health: 50, speed: 15, attack: 20, defense: 4)

#battles
#battle1 = Battle.create(party_member_id: lion.id, enemy_id: dragon.id)

