class ParentsController < ApplicationController
	def father
    	@user = User.find(params[:user_id])
	end
	def mother
    	@user = User.find(params[:user_id])
	end
	def children
    	@user = User.find(params[:user_id])
	end
end
