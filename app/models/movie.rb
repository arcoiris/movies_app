class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :description, length: { minimum: 10 }
	validates :year_released, numericality: true
	validates :year_released, inclusion: { in: 1..5 }
	
	def self.search_for query
  	# Search for movies by title, description, and year released
  	# CURRENTLY ONLY SEARCHES FOR TITLE && DESCRIPTION
  	self.where('title LIKE :query OR description LIKE :query', query: "%#{query}%")
  end
end

