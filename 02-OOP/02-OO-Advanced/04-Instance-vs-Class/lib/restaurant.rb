class Restaurant
  attr_accessor :city, :name, :average_rating, :number_of_ratings, :sum_of_ratings

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @number_of_ratings = 0
    @sum_of_ratings = 0
  end

  def rate(new_rate)
    @number_of_ratings += 1
    @sum_of_ratings += new_rate
    @average_rating = @sum_of_ratings / @number_of_ratings
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end

  # TODO: implement .filter_by_city and #rate methods
end
