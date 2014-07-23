class TweetsController < ApplicationController
	before_action :set_tweet, only: [:show, :edit, :update, :destroy]
	def index
		@tweets = Tweet.all
	end

	def show
	end

end

private

def set_tweet 
	@tweet = Tweet.find(params[:id])
end

def edit
end