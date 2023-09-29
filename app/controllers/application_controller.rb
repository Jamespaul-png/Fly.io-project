class ApplicationController < ActionController::Base
   def send-email
     @root = Application.find(params[:id])
     ApplicationMaile.email_notification(@root).deliver_now
     flash[:success] = " Email sent successfully !"
     redirect_to @root
   end
end
