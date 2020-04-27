class Show < ActiveRecord::Base
  
  def highest_rating
    Show.maximum(:rating)
  end 
  
  def most_popular_show
    Show.where(rating: highest_rating).first 
  end 
  
  def lowest_rating
    Show.minimum(:rating)
  end 
  
  def least_popular_show
    Show.where(rating: lowest_rating).first 
  end 
  
  def ratings_sum 
    Show.count
  
  
end 