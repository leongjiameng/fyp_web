class ExamSession < ApplicationRecord
    has_many :examinations
    has_many :candidates
end
