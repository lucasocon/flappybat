require 'gosu'

class GameWindow < Gosu::Window
	def initialize(*args)
		super
		@background = Gosu::Image.new(self, "images/background.png", false)	
		@foreground = Gosu::Image.new(self, "images/foreground.png", false)
	end

	def button_down(button)
		close if button == Gossu::KbEscape
	end

	def draw
		@background.draw(0,0,0)
		@foreground.draw(0,0,0)
	end

end
window = GameWindow.new(320,480,false)
window.show
