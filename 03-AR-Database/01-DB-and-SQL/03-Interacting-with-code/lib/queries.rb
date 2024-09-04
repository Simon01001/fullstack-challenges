require "sqlite3"

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  # Should return an integer of the number of artists.
  query = <<~SQL
    SELECT COUNT(*) FROM artists;
  SQL
  result = db.execute(query)
  return result.first.first
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name.
  # Should return an integer of the number of rows.
  names = <<~SQL
    SELECT COUNT(*) FROM #{table_name};
  SQL
  result = db.execute(names)
  return result.first.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically.
  # Should return an array of strings sorted alphabetically.
  names = <<~SQL
    SELECT name FROM artists ORDER BY name;
  SQL
  result = db.execute(names)
  results = []
  result.each do |i|
    i.join.to_s
    results << i.join.to_s
  end
  return results
end

def love_tracks(db)
  # TODO: return array of love songs' names.
  # Should return an array of strings (track names).
  names = <<~SQL
    SELECT name FROM tracks WHERE name LIKE '%love%';
  SQL
  result = db.execute(names)
  return result.flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending).
  # Should return an array of strings.

  result = db.execute("SELECT name FROM tracks WHERE milliseconds > ? ORDER BY milliseconds;", min_length * 60000)
  #h = []
  #result.each do |row|
    #h << row
  #end
  return result.flatten
end

def albums_per_artist(db)
  # TODO: return an array of arrays, each containing the artist's name and the number of albums they have
  #list = []
  names = <<~SQL
    SELECT
    artists.name,
    COUNT(*)
    FROM artists
    JOIN albums ON albums.artist_id = artists.id
    GROUP BY artists.name
    ORDER BY 1
  SQL
  result = db.execute(names)
  #result.each do |i|
    #list << i
  #end
  return result
end
