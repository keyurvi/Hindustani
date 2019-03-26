class UsersController < ApplicationController
	def index
    	@users = User.all
  	end
	def new
  	end

  	def create
		@user = User.new(user_params) 
	    if @article.save
    		redirect_to @article
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
