class SessionsController < ApplicationController

    def new
    end
    
    def create
        player = Player.find_by_name(params[:name])
        if player && player.authenticate(params[:password])
            session[:user_id] = player.id
         
        else
            flash.now.alert = "You did complete the form correctly, credential mismatch"
            
        end
        #return head(:forbidden) unless @user.authenticate(params[:password])
        #session[:user_id] = @user.id
    end
 

    def destroy
        session.delete(:user_id)
    end

end