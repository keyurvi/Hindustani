class WelcomeController < ApplicationController
  def index
  	unless current_user.user_name
		redirect_to edit_user_path(current_user)
	else
		@users = User.paginate(page: params[:page], per_page: 5)
	end
  end
end
