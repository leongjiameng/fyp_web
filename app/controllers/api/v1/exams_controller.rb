class Api::V1::ExamsController < API::BaseController
    respond_to :json
    before_action :ensure_authorized
    def index
        exams = []
        exams = @current_user.student.candidates.last.exam_registereds.includes(:examination)
        total = exams.count
      
        @event = EventWrapper.new(true, exams, 200, "", total)
    end

end