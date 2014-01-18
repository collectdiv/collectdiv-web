class ReservationsController < ApplicationController
  
  # Save a new reservation
  def create
    @reservation = Reservation.new(reservation_params)
    
    @group = StudyGroup.find(reservation_params[:study_group_id])

    # Get the user from the session
    user_id = session[:user_id]
    @user = User.find(user_id)
    @reservation.user = @user
    @reservation.study_group = @group
    @reservation.save

  end

  def reservation_params
    params[:reservation]
  end

end
