class RegistrationsController < ApplicationController
  
  def create
    @reservation = Reservation.new
    
    # Get the user from the session
    user_id = session[:user_id]
    @user = User.find(user_id)
    reservation.user = @user
    
    group_id = params[:group_id]
    @group = StudyGroup.find(group_id)

    @reservation.group = @group
    @reservation.user = @user
    @reservation.save

  end

end
