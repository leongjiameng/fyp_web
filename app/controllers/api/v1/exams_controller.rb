class Api::V1::ExamsController < API::BaseController
    respond_to :json
    before_action :ensure_authorized
    def index
        past = params[:past]
        page = params[:page].to_i || 0
        exams = []
        exams = @current_user.student.candidates.last.exam_registereds.includes(:examination)
        total = exams.count
        exams = exams.page(page).per(10)
        @event = EventWrapper.new(true, exams, 200, "", total)
      end













end