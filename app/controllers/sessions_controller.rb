class SessionsController < ApplicationController
 skip_before_action :authenticate
   def create
      user = User.find_by(email:
          params[:sessions][:email].downcase)
      if user && user.password == params[:sessions][:password]
        log_in user
        flash[:notice] = 'Logged in'
          if user.role == 'Doctor'
            redirect_to root_path
          elsif user.role == 'Vendor'
            redirect_to stuffs_path
          else
            redirect_to users_path
            
          end
      else
        flash.now[:alert] = 'Invalid email/password'
        render 'new'
      end
	end 

    def destroy
      log_out
      flash[:notice] = 'Logged out'
      redirect_to root_path
    end

end
