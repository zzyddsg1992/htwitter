class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end
	def create
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
			flash[:success] = "you have created a tweet"
			redirect_to new_tweet_path
		end
	
	end
	def index
		@tweets = Tweet.all
	end

	def tweet_params
		params. require(:tweet).permit(:content)
	end
end
