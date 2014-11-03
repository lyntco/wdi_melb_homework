class PagesController < ApplicationController
# This controller does not have a corresponding model as it only controls the main pages of the site

	def index
		@books = Book.all
	end

	def about
	end

end