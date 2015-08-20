require "gosu"
require "chipmunk"

require "warmup_weekend/version"
require "warmup_weekend/window"

module WarmupWeekend
	SCREEN_WIDTH = 640
	SCREEN_HEIGHT = 480

	def self.run
		w = Window.new	
		w.show
	end
end
