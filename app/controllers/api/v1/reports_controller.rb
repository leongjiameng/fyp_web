class Api::V1::ReportsController < API::BaseController
    respond_to :json
    before_action :ensure_authorized
    def index
        reports = []
        reports = @current_user.student.candidates.last.clashing_reports
        @event = EventWrapper.new(true, reports, 200, "", "")
    end

    def create
        user_id=@current_user.id
    end
        




end