class Api::V1::UsersController < API::BaseController
    respond_to :json
    before_action :ensure_authorized
    def profile_student
        past = params[:past]
        page = params[:page].to_i || 0
        profile = []
        if !@current_user.student.nil?
            profile=@current_user.student
            @event = EventWrapper.new(true, profile, 200, "")
        end
        if !@current_user.staff.nil?
            @event = EventWrapper.new(false,[] , 400, "The user is not student")
        end
        
        @event = EventWrapper.new(true, profile, 200, "")
    end

    def profile_staff
        past = params[:past]
        page = params[:page].to_i || 0
        profile = []
        if !@current_user.student.nil?
            @event = EventWrapper.new(false, [] , 400, "The user is not staff")
        end
        if !@current_user.staff.nil?
            profile=@current_user.staff
            @event = EventWrapper.new(true, profile, 200, "")
        end
        
      
    end


end