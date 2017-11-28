class RidesController < ApplicationController

  def create
    @ride = Ride.new(user_id: params[:ride][:user_id], attraction_id: params[:ride][:attraction_id])
    @message = @ride.take_ride
    redirect_to user_path(current_user), flash: {notice: @message}
  end

end
