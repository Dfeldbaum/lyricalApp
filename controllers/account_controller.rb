class AccountController < ApplicationController

	get '/' do
		Account.all.to_json

	end 

	get '/:id' do

		@id = params[:id]
		Account.find(@id).to_json
	
	end



	post '/register' do

		@username = params[:username]
		@email = params[:email]
		@password = params[:password]


		password_salt = BCrypt::Engine.generate_salt
		password_hash = BCrypt::Engine.hash_secret(@password, password_salt)

		@model = Account.new
		@model.username = @username
		@model.email = @email
		@model.password_hash = password_hash
		@model.password_salt = password_salt
		@model.save

		session[:user] = @model
		@username = session[:user][:username]

	end



	post '/login' do

		@username = params[:username]
		@password = params[:password]

		@model = Account.where(:username => @username).first!
		if @model.password_hash == BCrypt::Engine.hash_secret(@password, @model.password_salt)
			@account_message = "Welcome back!"
			session[:user] = @model

			@username = session[:user][:username]

			# return erb :login_notice
		else
			@account_message = "Sorry, you password did not match. Try again?"
			# return erb :login_notice
		end

	end 



	get '/logout' do
		session[:user] = nil
		@username = nil
		redirect '/'		
	end
	


end		
