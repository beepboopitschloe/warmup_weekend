require "gosu"
require "chipmunk"

require "warmup_weekend/version"

module WarmupWeekend
	SCREEN_WIDTH = 640
	SCREEN_HEIGHT = 480

	class WarmupWindow < Gosu::Window
		def initialize
			super(SCREEN_WIDTH, SCREEN_HEIGHT, false)
			self.caption = "Hello world"
		end
	end

	def self.run
		w = WarmupWindow.new	
		w.show
	end
end
