module PlaylistCalculatorHelper
	def format_seconds(seconds)
		num_minutes = seconds / 60
		num_seconds = seconds % 60

		return format("%02d:%02d", num_minutes, num_seconds)
	end
end
