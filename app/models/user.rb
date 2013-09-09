class User < ActiveRecord::Base
  validates_presence_of  :email, :password, :password_confirmation
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable
end
