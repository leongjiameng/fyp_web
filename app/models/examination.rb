class Examination < ApplicationRecord
    belongs_to :subject
    belongs_to :exam_session
    has_many :venue_allocations
end
