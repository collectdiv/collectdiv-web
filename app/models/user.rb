# user.rb
# User model for pretty much all model stuff.


class User < ActiveRecord::Base

  attr_accessor :password
  attr_accessible :username, :email, :password, :password_confirmation, :active

  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create


  validates :email, :presence => true,
    :uniqueness => true
  
  # haha just kidding.
  #validates :username, :presence => true,
  #  :uniqueness => true

  # Authenticate a user against a password. Returns the user object if the user is authenticated
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      return user
    else
      return nil
    end
  end

  # Encrypts the password. This is done before saving the user to the database
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
