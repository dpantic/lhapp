class SessionsController < ApplicationController
<<<<<<< HEAD

  def new
  end

  def create
=======
	def new
	end

	def create
>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

<<<<<<< HEAD
  def destroy
    sign_out
    redirect_to root_url
  end
end
=======
	def destroy
		sign_out
		redirect_to root_url
	end
end
>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
