class Examination < ApplicationRecord
    belongs_to :subject
    belongs_to :exam_session
    has_many :venue_allocations
    has_many :invigilators
    has_many :exam_registereds


    scope :is_past, -> {where("end_time < ?", Time.now)}
    scope :is_not_past, -> {where("end_time > ?", Time.now)}




end
