class UsersController < ApplicationController
  def index
    @users = User.all.paginate(:page => params[:page], :per_page => 10)
    @user_options = User.all.map { |u| [ u.name, u.id ]}

    @user_name = params[:name]
    
  end
end
