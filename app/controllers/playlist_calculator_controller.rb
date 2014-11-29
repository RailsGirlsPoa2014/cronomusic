class PlaylistCalculatorController < ApplicationController
  def time
  end

  def playlist
  	@time = params[:time].to_i
  	@songs = Song.create_playlist(@time * 60)

=begin
	@total_playlist = 0
  	@songs.each do |song|
  		@total_playlist = @total_playlist + song.duration
  	end
=end

  	@total_playlist = @songs.map{|song| song.duration }.sum
  end
end
