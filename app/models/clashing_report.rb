class ClashingReport < ApplicationRecord
    belongs_to :candidate
    belongs_to :exam_registered1, class_name: "ExamRegistered"
    belongs_to :exam_registered2, class_name: "ExamRegistered"
end
