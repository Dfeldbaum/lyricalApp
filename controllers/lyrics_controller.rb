class LyricsController < ApplicationController

	get '/' do
		Lyrics.all.to_json

	end 

	get '/:id' do

		@id = params[:id]
		Lyrics.find(@id).to_json
	
	end



	# post '/createlyrics' do

	# 	@artist = params[:artist]
	# 	@song = params[:song]
	# 	@lyrics = params[:lyrics]
	# 	@year = params[:year]
	# 	@genre = params[:genre]
	# 	@image = params[:image]
	# 	@user_id = params[:user_id]


	# 	@model = Lyric.new



	# end
	


end		
