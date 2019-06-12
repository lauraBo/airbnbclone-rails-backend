class Room < ApplicationRecord
    has_many :photos 

    validates :home_type, presence: true
    validates :room_type, presence: true
    validates :accommodate_type, presence: true
    validates :bed_room, presence: true
    validates :bath_room, presence: true

end