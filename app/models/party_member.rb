class Party_member < ActiveRecord::Base
    has_many :enemies, through: :battles
end