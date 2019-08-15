class API::BaseController < ActionController::Base
    # protect_from_forgery with: :exception
    # skip_before_action :verify_authenticity_token  
    protected # Only inherited controllers can call authorized?
    def authorized?
      request.authorization.present? && (request.authorization.split(' ', 2).first == 'Basic')
    end
  
    def get_auth_token
         request.authorization.split(' ', 2).last
    end
  
  
    def ensure_authorized
  
      if authorized?
        @current_user = User.where("encrypted_password LIKE ?","#{get_auth_token}%").first
        
        if @current_user.blank?      	
          @event = EventWrapper.new(false,{},401,"Invalid AuthToken")
          render
        end
  
      else
        @event = EventWrapper.new(false,{},401,"Missing AuthToken")
        render
      end
  
    end
  
  
  
  
  end
  