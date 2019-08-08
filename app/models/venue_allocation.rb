class VenueAllocation < ApplicationRecord
    belongs_to :examination
    belongs_to :resource
    has_many :exam_registereds
end
