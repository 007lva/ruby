require 'date'

class Movie
	attr_reader :title
	attr_reader :genero
	attr_reader :by_date

	def initialize(title, genero, by_date)
		@title = title
		@genero = genero
		@by_date = by_date
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
		#animals.find {|animal| animal == 'duck'}
		@movies.find {|movie| movie.title == 'Viernes 13'}
	end

	def remove(movie_to_remove)
		@movies.delete_if do |movie|
		movie.title = movie.movie_to_remove
		#@movies.delete(movie_to_remove)
		end
	end

	def order_by_title
		@movies.map {|movie| movie.title}.sort
		#@movies.sort! {|moviea, movieb| moviea.title <=> movieb.title }
	end

	def order_by_genero
		# movies_by_genre = @movies.select do |movie|
		# 	movie.movies_by_genre
		#end
		#movies_by_genre.sort.map {|movie| movie.title}
		@movies.map {|movie| movie.genero}.sort
		#@movies.sort! {|moviea, movieb| moviea.title <=> movieb.title}
	end

	def order_genero
		@movies.map {|movie| movie.genero}.sort
	end

	def sort_by_date
		@movies.sort {|moviea, movieb| moviea.by_date <=> movieb.by_date }.map{|movie| movie.by_date}

	end


	def between_date(date1, date2)
	movies_between_date = @movies.select do |movie| 
		movie.by_date > date1 && movie.by_date < date2
		end
	movies_between_date.map {|movie| movie.by_date}
	end
end



=begin
die_hard = Movie.new('Die Hard', 'Action', Date.new(2014, 2, 24))
aladin = Movie.new('Aladdin', 'Kids', Date.new(2014, 2, 14))
viernes13 = Movie.new('Viernes 13', 'Terror', Date.new(2014, 2, 3))
lion_king = Movie.new("Lion King", 'Kids', Date.new(2014, 2, 19))

cinema = Cinema.new([die_hard, aladin, viernes13])
puts cinema.listing
puts


cinema.add(lion_king)
puts cinema.listing
puts

cinema.order_by_title
puts cinema.listing
puts

cinema.order_genero
puts cinema.order_genero
puts

cinema.finding
puts cinema.finding.title
puts

puts cinema.sort_by_date
puts

puts cinema.between_date(Date.new(2014,2,10),Date.new(2014,2,15))
=end


