class SessionsController < ApplicationController

	before_action :logged_in_users, only: [:new,:create]

	def new
		
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			flash[:notice] = "Welcome, #{user.username}!!"
			session[:user_id] = user.id	
			redirect_to root_path	
		else
			flash.now[:alert] = "Please enter valid credentials."
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Logged out successfully!"
		redirect_to login_path
	end

	private

	def logged_in_users
		if logged_in?
			flash[:alert] = "You are already logged in"
			redirect_to root_path
		end
	end

	


end
