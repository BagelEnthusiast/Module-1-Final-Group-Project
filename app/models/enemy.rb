class Enemy < ActiveRecord::Base
    has_many :party_members, through: :battles
end