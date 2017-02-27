class HomeController < ApplicationController
	layout 'home'
	def index
		# @hotels = Hotel.all
	end

	def search
		like_key = "%#{params[:search_key]}%"
		@hotels = Hotel.where('lower(name) LIKE ?', like_key.downcase)
		puts "----------"
		puts @hotels.inspect
	end
end
