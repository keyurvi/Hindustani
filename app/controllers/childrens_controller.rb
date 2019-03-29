class ChildrensController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@children = @user.children.create(children_params)
		@children.save
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:user_id])
		@children = @user.childrens.find(params[:id])
		@children.destroy
		redirect_to user_path(@user)
	end

	private

	def children_params
    	params.require(:children).permit(:children_name, :children_aadhar_number, :children_bdate)
 	end
end
