class Battle < ActiveRecord::Base
    belongs_to :enemy
    belongs_to :party_member
end