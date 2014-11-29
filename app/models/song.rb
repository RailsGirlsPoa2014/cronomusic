class Song < ActiveRecord::Base
	def self.create_playlist(total_duration)
		tempo_restante = total_duration
		playlist = []
		todas_embaralhadas = Song.all.shuffle

		# ushdiuhsdiauhsdiahd
		while tempo_restante > 0 && todas_embaralhadas.size > 0
			song = todas_embaralhadas.shift
			playlist << song

			tempo_restante = tempo_restante - song.duration
		end

		return playlist
	end
end
