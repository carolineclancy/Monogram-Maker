class User
  attr_accessor :initials, :pattern, :font_color, :background_color, :border_color, :background_image, :font

  ALL_NAMES = []

  def initialize(initials, pattern, font_color, background_color, border_color, background_image, font)
    
    @initials = initials

    @pattern = pattern

    @font_color = font_color

    @background_color = background_color

    @border_color = border_color

    @background_image = background_image

    @font = font

    ALL_NAMES << self
  end

  def self.all
    ALL_NAMES
  end
end
