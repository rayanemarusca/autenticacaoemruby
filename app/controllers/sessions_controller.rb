class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if !@user.nil?  && @user.authenticate(params[:session][:password])
      sign_in(@user)
      redirect_to @user
    else
      render 'new'
    end
  end
end