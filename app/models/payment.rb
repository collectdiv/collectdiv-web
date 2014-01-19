# Get Paid, Son
# This acts as a way to keep track of payments in the database
# Actually, it's more like payment attempts.  
class Payment < ActiveRecord::Base
  attr_accessible :email, :stripe_token, :success

  has_one :user
  
end
