class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	unless current_user.try(:user_name)
		redirect_to edit_user_path(current_user)
	else
		@users = User.paginate(page: params[:page], per_page: 5)
	end
  end
end
