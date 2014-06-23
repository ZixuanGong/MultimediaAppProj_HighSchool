class SessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.find_by(name: params[:session][:name])
	if admin && params[:session][:password]==admin.password
		sign_in admin
		redirect_to root_url
  	else
  	  flash.now[:error] = 'Invalid name/password combination' 
      render 'new'
  	end
  end

  def destroy
  	sign_out
  	redirect_to root_url
  end
end
