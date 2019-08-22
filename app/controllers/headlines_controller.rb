class HeadlinesController < ApplicationController
	def index
		@headline = Headline.order("RANDOM()").first
	end
end
