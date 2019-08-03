class VenueAllocation < ApplicationRecord
    belongs_to :examinations
    belongs_to :resources
end
