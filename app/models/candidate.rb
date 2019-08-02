class Candidate < ApplicationRecord
    belongs_to :student
    belongs_to :exam_session
    has_many :exam_registereds
end
