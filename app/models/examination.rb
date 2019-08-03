class Examination < ApplicationRecord
    belongs_to :subject
    belongs_to :exam_session
end
