class UsersController < ApplicationController
	before_action :find_by_id, except: [:index,:create]
	def index
    	@users = User.paginate(page: params[:page], per_page: 5)
  	end
	def new
		@user = User.new
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
  	def edit
    	@user = User.find(params[:id])
  	end

  	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
		  redirect_to @user
		else
		  render 'edit'
		end
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end
	def father
	end
	def mother
	end
	def children
    	@children = Child.find(params[:child_id])
	end

	def find_by_id
		@user = User.find(params[:id])
	end

  	private
  		def user_params
    		params.require(:user).permit(:name, :aadhar_number, :bdate, :father_name, :mother_name, :children, :father_aadhar_number, :father_bdate, :mother_aadhar_number, :mother_bdate, :avatar, childrens_attributes:[:id, :children_name, :children_aadhar_number, :children_bdate, :_destroy])
  		end
end
