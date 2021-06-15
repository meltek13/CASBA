class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
    
    private
  
    def respond_with(resource, _opts = {})
      register_success && return if resource.persisted?
      
      register_failed
    end
  
    def register_success   
        @current_user = resource
        render json: {user: resource}  
    end
  
    def register_failed
      render json: { message: "Something went wrong." }
    end
    
    #def current_token
    #  request.env['warden-jwt_auth.token']
    #end
   
  end