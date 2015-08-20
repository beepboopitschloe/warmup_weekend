module WarmupWeekend
	class Window < Gosu::Window
		def initialize
			super(SCREEN_WIDTH, SCREEN_HEIGHT, false)
			self.caption = "Hello world"

			@font = Gosu::Font.new(self, Gosu::default_font_name, 20)

			@rob_x = 0
			@rob_y = 0
		end

		def update
			puts "HELLO ROB ;)"	

			if @rob_x < SCREEN_WIDTH + 30
				@rob_x = @rob_x + 2
			else
				@rob_x = -30
			end

			if @rob_y < SCREEN_HEIGHT + 30
				@rob_y = @rob_y + 2
			else
				@rob_y = -30
			end
		end

		def draw
			@font.draw("HELLO ROB ;)", @rob_x, @rob_y, 0, 1.0, 10.0, 0xffffff00)
		end
	end
end
