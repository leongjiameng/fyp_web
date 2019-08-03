class Programme < ApplicationRecord
    has_many :students
    belongs_to :department
end
