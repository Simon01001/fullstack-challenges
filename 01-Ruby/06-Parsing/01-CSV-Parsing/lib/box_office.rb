require 'csv'
def most_successful(number, max_year, file_path)
  # TODO: return an array of most successful movies before `max_year`
  filtered = []
  CSV.foreach(file_path) do |row|
    if row[1].to_i < max_year
      filtered << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
    end
  end

  sorted_list = filtered.sort_by do |movie|
    -movie[:earnings]
  end
  return sorted_list[0...number]
end
