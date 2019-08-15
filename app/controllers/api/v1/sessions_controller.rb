class Api::V1::SessionsController < API::BaseController
    protect_from_forgery with: :null_session, only: [:create]
    before_action :ensure_params_exist , only: [:create]
    before_action :ensure_authorized , except: [:create,:sign_up,:forget_password]
    skip_before_action :verify_authenticity_token
    respond_to :json    

    def create
        resource = User.find_for_database_authentication(:email=>params[:login])
        return invalid_login_attempt unless resource
        if resource.valid_password?(params[:password])
          sign_in(:user)
          @event = EventWrapper.new(true,resource,200,'',0,nil,@badge)
          render
          return
        end
        invalid_login_attempt
      end

      protected
      def ensure_params_exist
        return unless params[:login].blank? || params[:password].blank?
        @event = EventWrapper.new(false,{},400,"Missing login or password parameter")
        render
      end
    
      def invalid_login_attempt
        warden.custom_failure!
        @event = EventWrapper.new(false,{},401,"Error with your login or password")
        render
      end
  
  
  end