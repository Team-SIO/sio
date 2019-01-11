json.genre_name @genre.genre_name
json.array do
  json.array! @genre.artists, :artist_name, :id
end
