class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :lockable, :recoverable,
         :rememberable, :registerable, :trackable, :timeoutable, :validatable,
         :token_authenticatable

  attr_accessible :email, :password, :password_confirmation, :authentication_token

  def ensure_authentication_token!   
      reset_authentication_token! if authentication_token.blank?   
  end
end
