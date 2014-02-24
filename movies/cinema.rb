class Movie
	attr_reader :title
	attr_reader :genero

	def initialize(title)
		@title = title
	end

	def set_genero(genero)
		@genero = genero
	end

	def <=> (other_movie)
		title <=> other_movie.title
	end

end

class Cinema
	def initialize(movies)
		@movies =  movies
	end

	def listing
		@movies.map {|movie| movie.title}
	end

	def add(movie)
		@movies << movie
		#@movies.push(movie)
	end

	def  finding
		@movies.find {|movie| movie.title == 'Aladdin'}
	end

	def remove(movie_to_remove)
		@movies.delete_if do |movie|
		movie.title = movie.movie_to_remove
		#@movies.delete(movie_to_remove)
		end
	end

	def order_asc
		@movies.map {|movie| movie.title}.sort
		#@movies.sort! {|moviea, movieb| moviea.title <=> movieb.title }

	end

	def order_genero
		@movies.map {|movie| movie.genero}.sort
	end

end


die_hard = Movie.new('Die Hard')
aladin = Movie.new('Aladdin')
viernes13 = Movie.new('Viernes 13')
lion_king = Movie.new("Lion King")

cinema = Cinema.new([die_hard, aladin, viernes13])
puts cinema.listing

cinema.add(lion_king)
puts cinema.listing
puts

cinema.order_asc
puts cinema.listing

aladin.set_genero("Kids")
viernes13.set_genero("Terror")
die_hard.set_genero("Action")
lion_king.set_genero("Kids")

cinema.order_genero
puts cinema.order_genero