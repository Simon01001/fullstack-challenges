require_relative "recipe"
require_relative "controller"
require "csv"

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    load_csv
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
    save_csv
  end

  def destroy(index)
    @recipes.delete_at(index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
