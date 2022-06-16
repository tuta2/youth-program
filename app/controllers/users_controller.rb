class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index
  end

  def new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      flash[:notice] = "Welcome #{current_user.email}"
      redirect_to root_path
    else
      flash[:alert] = @user.errors.full_messages.join(', ')
      redirect_to login_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
