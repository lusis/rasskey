module RassKey
  class Line
    class << self
      attr_accessor :default_width
      attr_accessor :default_padding
      attr_accessor :default_glyph
    end

    @default_width = 20
    @default_padding = 1
    @default_glyph = '-'
    @default_caption = nil

    attr_accessor :width
    attr_accessor :padding
    attr_accessor :glyph

    def initialize(options = {})
      options = {
        :width => RassKey::Line.default_width,
        :padding => RassKey::Line.default_padding,
        :glyph => RassKey::Line.default_glyph
      }.merge(options)

      self.width = options[:width]
      self.padding = options[:padding]
      self.glyph = options[:glyph]

      super()
    end

    def draw(data)
      @glyph.length == 1 ? (@glyph = @glyph) : (@glyph = @glyph[0,1])
      spacing = " " * @padding || " "
      line_text = "#{spacing}#{data}#{spacing}"
      begin
        content_line = "#{@glyph * ((@width - line_text.length)/2)}#{line_text}#{@glyph * ((@width - line_text.length)/2)}"
        content_line
      rescue
        puts "Width must be larger to accomodate text"
      end
    end

  end
end
