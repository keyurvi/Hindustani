class UsersController < ApplicationController
	def index
    	@users = User.paginate(page: params[:page], per_page: 5)
  	end
	def new
  	end

  	def create
		@user = User.new(user_params) 
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
  	end

  	def show
    	@user = User.find(params[:id])
  	end

  	private
  		def user_params
    		params.require(:user).permit(:name, :aadhar_number, :bdate, :father_name , :mother_name)
  		end
end