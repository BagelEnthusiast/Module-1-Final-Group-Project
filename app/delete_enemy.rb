def delete_enemy(opponent)

    opponent.delete
    #Enemy.where(name: opponent.name).destroy_all

end