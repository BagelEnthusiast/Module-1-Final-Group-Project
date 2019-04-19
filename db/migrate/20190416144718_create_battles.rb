class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.integer :party_member_id
      t.integer :enemy_id
      t.text :winner
      t.text :loser
    end
  end
end
