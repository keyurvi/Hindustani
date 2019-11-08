class ChildrensController < ApplicationController
	before_action :find_child_by_id, only: [:create,:destroy] 

	def create
		@children = @user.children.create(children_params)
		@children.save
		redirect_to user_path(@user)
	end

	def destroy
		@children = @user.childrens.find(params[:id])
		@children.destroy
		@keyur = "keyur"
		redirect_to user_path(@user)

	end

	def find_child_by_id
		@user = User.find(params[:user_id])
	end

	private

	def children_params
    	params.require(:children).permit(:children_name, :children_aadhar_number, :children_birthdate)
 	end
end
