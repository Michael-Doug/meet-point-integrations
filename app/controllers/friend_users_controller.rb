class FriendUsersController < ApplicationController
  before_action :set_friend_user, only: [:show, :update, :destroy]

  def index
    @friend_users = FriendUser.all
    render json: @friend_users
  end

  def create
    @friend_user = FriendUser.new(friend_user_params)

    render json: @friend_user, status: :created if @friend_user.save
  rescue => error
    puts error
    render json: { error: "Error on creating friend user, error: #{error}" }, status: :unprocessable_entity
  end

  def update
    render json: @friend_user if @friend_user.update(friend_user_params)
  rescue => error
    puts error
    render json: { error: "Error on updating friend user, error: #{error}" }, status: :unprocessable_entity
  end

  def show
    render json: @friend_user
  end

  def destroy
    @friend_user.destroy
    head :no_content
  end

  private

  def set_friend_user
    @friend_user = FriendUser.find(params[:id])
  end

  def friend_user_params
    params.require(:friend_user).permit(:first_name, :full_name, friends_address_attributes: [:id, :street, :city, :state, :number, :zip, :country, :latitude, :longitude, :neighborhood, :_destroy])
  end
end
