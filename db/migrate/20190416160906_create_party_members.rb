class CreatePartyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :party_members do |t|
      t.string :name
      t.integer :temp_health
      t.integer :perm_health
      t.integer :speed
      t.integer :attack
      t.integer :defense
    end
  end
end
