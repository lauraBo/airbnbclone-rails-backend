class Room < ApplicationRecord
    has_many :photos 
    has_many :reservations
    has_many :guest_reviews

    validates :home_type, presence: true
    validates :room_type, presence: true
    validates :accommodate_type, presence: true
    validates :bed_room, presence: true
    validates :bath_room, presence: true


    def average_rating
        guest_reviews.count == 0 ? 0 : guest_reviews.average(:star).round(2).to_i
    end  

end
