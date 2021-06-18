class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save { self.email = email.downcase }
  attr_reader :password, :current_password
  attr_accessor :password_confirmation
  def authenticate i
    # do something
    puts ""
  end
end
