class UsersController < ApplicationController
	before_action :find_by_id, except: [:index,:create,:new]

	def index
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
		@document = Document.where(:people_role => 0, :people_id => current_user.id.to_i)
  	end

  	def edit
  	end

  	def update
  		# raise params.inspect
		if @user.update(user_params)
		  redirect_to @user
		else
		  render 'edit'
		end
	end

	def destroy
		@user.destroy
		redirect_to users_path
	end

	def father
		@document = Document.where(:people_role => 1, :people_id => current_user.id.to_i)
		# raise @document.inspect
	end

	def mother
		@document = Document.where(:people_role => 2, :people_id => current_user.id.to_i)

	end

	def children
    	@children = Child.find(params[:child_id])
	end

	def find_by_id
		@user = current_user
		if params[:id].to_i != @user.id
			render "users/_error.html.erb"
  		end
	end

  	private
  		def user_params
    		params.require(:user).permit(:user_name, :user_aadhar_number, :user_birthdate, :father_name, :mother_name, 
    			:children, :father_aadhar_number, :father_birthdate, :mother_aadhar_number, :mother_birthdate,     			
    			:avatar, documents_attributes:[:id, :attachment, :people_role, :_destroy],
    			childrens_attributes:[:id, :children_name, :children_aadhar_number, :children_birthdate, :_destroy, documents_attributes:[:id, :attachment, :_destroy]])
  		end
end
