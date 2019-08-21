class Api::V1::ExamsController < API::BaseController
    before_action :ensure_authorized
    respond_to :json
    def index
        if !@current_user.student.nil?
            exams = []
            exams = @current_user.student.candidates.last.exam_registereds.includes(:examination)
            total = exams.count
            @event = EventWrapper.new(true, exams, 200, "", total)
        else
            @event = EventWrapper.new(true,[] ,204 , "The user logged in does not registered any exam")
        end
    end

end