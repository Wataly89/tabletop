class HeadlinesController < ApplicationController
	def index
		@headlines = Headline.order("RANDOM()").first
	end

	def new
		@headline = Headline.new
	end

	def create
		Headline.create(headline_params)
		redirect_to root_path
	end

	private

	def headline_params
		params.require(:headline).permit(:quote, :player)			
	end

end
