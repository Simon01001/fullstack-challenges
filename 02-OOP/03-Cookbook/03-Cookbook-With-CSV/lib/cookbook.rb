require_relative "recipe"
require_relative "controller"
require "csv"

class Cookbook
  def initialize(filepath)
    @filepath = filepath
    @recipes = []
  end

  #def save_csv(filepath)
    #CSV.open(filepath, "wb") do |csv|
      #csv << @name
    #end
  #end

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
  end

  def destroy(index)
    @recipes.delete_at(index)
  end
end
