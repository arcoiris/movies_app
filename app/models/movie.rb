class Movie < ActiveRecord::Base
	def self.search_for query
  	# Search for movies by title, description, and year released
  	# CURRENTLY ONLY SEARCHES FOR TITLE && DESCRIPTION
  	self.where('title LIKE :query OR description LIKE :query', query: "%#{query}%")
  end
end
