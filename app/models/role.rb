class Role < ApplicationRecord
    belongs_to :user
    has_one :student
    has_one :staff
end
