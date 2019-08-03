class Invigilator < ApplicationRecord
    has_one :venue_allocation
    has_one :examination
end
