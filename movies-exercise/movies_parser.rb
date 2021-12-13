class MoviesParser
  require 'json'

  MOVIES =   JSON.parse(File.read('movies-exercise/movies.json'))
  GENRES =   JSON.parse(File.read('movies-exercise/genres.json'))

  def initialize
    @movies = MOVIES
    @genres = GENRES
  end

  def parse_movies
    @movies['results'].each do |movie|
      if (movie['genre_ids'])
        movie_genre = @genres['genres'].select { |genre| genre['id'] == movie['genre_ids'][0] }
        if (movie_genre && movie_genre.length > 0)
          genre_name = "#{movie_genre[0]['name']}"
        else
          genre_name = "General"
        end
        puts "#{movie['title']} / " + genre_name
      end
    end
  end

end

movies = MoviesParser.new
movies.parse_movies