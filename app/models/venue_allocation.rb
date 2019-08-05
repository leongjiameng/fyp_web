class VenueAllocation < ApplicationRecord
    belongs_to :examination
    belongs_to :resource
end
