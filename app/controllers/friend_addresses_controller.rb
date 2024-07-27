class FriendAddressesController < ApplicationController
  before_action :set_friend_address, only: [:show, :update, :destroy]

  def index
    @friend_addresses = FriendAddress.all
    render json: @friend_addresses
  end

  def create
    @friend_address = FriendAddress.new(friend_address_params)
    render json: @friend_address, status: :created
  rescue => error
    puts error
    render json: { error: "Error on creating friend address, error: #{error}" }, status: :unprocessable_entity
  end

  def update
    puts error
    render json: @friend_address if @friend_address.update(friend_address_params)
  rescue => error
    render json: { error: "Error on updating friend address, error: #{error}" }, status: :unprocessable_entity
  end

  def show
    render json: @friend_address
  end

  def destroy
    @friend_address.destroy
    head :no_content
  end

  private

  def set_friend_address
    @friend_address = FriendAddress.find(params[:id])
  end

  def friend_address_params
    params.require(:friend_address).permit(:street, :city, :state, :number, :zip, :country, :latitude, :longitude, :neighborhood, :friend_user_id)
  end
end
