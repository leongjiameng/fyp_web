class Staff < ApplicationRecord
    has_many :invigilators
    belongs_to :deperment
end
