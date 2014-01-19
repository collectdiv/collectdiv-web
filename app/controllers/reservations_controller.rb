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

    billing_email = params[:stripeEmail]
    stripe_token = params[:stripeToken]

    charge_stripe(@user, billing_email, stripe_token)

  end

  def reservation_params
    params[:reservation]
  end

  def charge_stripe(user, email, token)
    # Set your secret key: remember to change this to your live secret key in production 
    # # See your keys here https://manage.stripe.com/account 
    Stripe.api_key = "sk_test_j4NSp807OmwYpaHl4NgncT5j"  # replace this later

    payment = Payment.new
    payment.user = user
    payment.email = email
    payment.token = token
    payment.success = true
    
    # Get the credit card details submitted by the form 
    # Create the charge on Stripe's servers - this will charge the user's card begin charge 
    begin
      Stripe::Charge.create( :amount => 1000, # amount in cents, 
                           :currency => "usd", :card => token, 
                           :description => email ) 
    rescue Stripe::CardError => e # The card has been declined end
      puts 'There was an error'
      puts e
      payment.success = false
    end
    
  end



end
