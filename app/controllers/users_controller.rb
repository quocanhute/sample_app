class UsersController < ApplicationController
  before_action :permission_view_profile, only: %i[ show ]
  def show
    @user = User.find(params[:id])
    # puts(@user)
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      reset_session
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def send_mail
    SendMailJob.perform_async(current_user.email)
  end


  private

  def permission_view_profile
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_path, alert: "You can't view people profile"
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
