class Invigilator < ApplicationRecord
    belongs_to :venue_allocation
    belongs_to :examination
    belongs_to :staff
end
