class ExamRegistered < ApplicationRecord
    belongs_to :candidate
    belongs_to :examination
    has_one :venue_allocation
end
