class UsersController < ApplicationController
  def index
  end
  
  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  private

  def user_params
    params.require(:users).permit(:email, :name, :profiele, :occupation, :position)
  end
end
