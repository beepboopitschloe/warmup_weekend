module WarmupWeekend
	class Window < Gosu::Window
		def initialize
			super(SCREEN_WIDTH, SCREEN_HEIGHT, false)
			self.caption = "Hello World"

			@font = Gosu::Font.new(self, Gosu::default_font_name, 20)

			@rob_x = 0
			@rob_y = 0

			@music = Gosu::Sample.new("assets/good_song.mp3")
			@music.play

			@weed = Gosu::Image.new("assets/weed.png")
			@weed_x = SCREEN_WIDTH
			@weed_y = SCREEN_HEIGHT
			@weed_a = 0
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

			if @weed_x > 0
				@weed_x -= 1
			else
				@weed_x = SCREEN_WIDTH
			end

			if @weed_y > 0
				@weed_y -= 1
			else
				@weed_y = SCREEN_HEIGHT
			end

			@weed_a += 0.5
		end

		def draw
			@weed.draw_rot(@weed_x, @weed_y, 1, @weed_a)

			@font.draw("HELLO ROB ;)", @rob_x, @rob_y, 10, 1.0, 10.0, 0xffffff00)
		end
	end
end
