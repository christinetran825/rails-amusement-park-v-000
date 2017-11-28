class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
  #   if tickets(not enought)
  #     "Sorry. You do not have enough tickets to ride the #{attraction.name}."
  #   elsif height (not tall enough)
  #     "Sorry. You are not tall enough to ride the #{attraction.name}."
  #   elsif tickets(notenought) && height(nottallenough)
  #     "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
  #   update ticket number
  #   updaet user's nausea_rating
  #   update user's happiness
  end


end
