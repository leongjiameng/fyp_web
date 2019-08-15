class Staff < ApplicationRecord
    has_many :invigilators
    belongs_to :department
    belongs_to :user
end
