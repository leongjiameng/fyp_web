class Student < ApplicationRecord
    belongs_to :programme
    belongs_to :user
    has_many :candidates
end
