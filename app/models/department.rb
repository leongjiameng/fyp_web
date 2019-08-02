class Department < ApplicationRecord
    belongs_to :faculty
    has_many :students
    has_many :programmes
    has_many :staffs
    
end
