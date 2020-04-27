class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum
  end 
end 