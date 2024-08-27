require 'open-uri'
require 'json'


def generate_grid(grid_size)
  # TODO: generate random grid of letters
  charset = Array('A'..'Z')
  Array.new(grid_size) { charset.to_a.sample }
end
generate_grid(4)
def run_game(attempt, grid, start_time, end_time)
  url = "https://dictionary.lewagon.com/#{attempt}"
  # TODO: runs the game and return detailed hash of result (with `:score`, `:message` and `:time` keys)
  user_serialized = URI.open(url).read
  user = JSON.parse(user_serialized)
  puts user

  if user["found"] == true #&& grid.match(attempt)
    score = (attempt.length * 10) - (end_time - start_time)
    return {score: score.to_i, message: "well done", time: end_time - start_time.to_i}
  elsif user["found"] == false
    score = 0
    return {score: score.to_i, message: "not in the grid", time: (end_time - start_time).to_i}
  end
end
