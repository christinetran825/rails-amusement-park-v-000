class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if lots_of_tickets && you_are_tall
      updating_status
    elsif !lots_of_tickets && you_are_tall
      "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    elsif lots_of_tickets && !you_are_tall
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    else
      "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    end
  end

  def lots_of_tickets
    self.user.tickets >= self.attraction.tickets
  end

  def you_are_tall
    self.user.height >= self.attraction.min_height
  end

  def updating_status
    user.tickets -= attraction.tickets
    user.nausea += attraction.nausea_rating
    user.happiness += attraction.happiness_rating
    user.save
    "Thanks for riding the #{self.attraction.name}!"
  end


end
