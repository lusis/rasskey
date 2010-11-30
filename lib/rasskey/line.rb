module RassKey
  class Line
    class << self
      attr_accessor :default_length
      attr_accessor :default_padding
      attr_accessor :default_glyph
      attr_accessor :default_orientation
    end

    @default_length = 20
    @default_padding = 1
    @default_glyph = '-'
    @default_orientation = "vertical"

    attr_accessor :line_length
    attr_accessor :padding
    attr_accessor :glyph
    attr_accessor :orientation

    def initialize(options = {})
      options = {
        :line_length => RassKey::Line.default_length,
        :padding => RassKey::Line.default_padding,
        :glyph => RassKey::Line.default_glyph,
        :orientation => RassKey::Line.default_orientation
      }.merge(options)

      self.line_length = options[:line_length]
      self.padding = options[:padding]
      self.glyph = options[:glyph]
      self.orientation = options[:orientation]

      super()
    end

    def draw(data)
      @glyph.length == 1 ? (@glyph = @glyph) : (@glyph = @glyph[0,1])
      spacing = " " * @padding || " "
      line_text = "#{spacing}#{data}#{spacing}"
      begin
        content_line = "#{@glyph * ((@line_length - line_text.length)/2)}#{line_text}#{@glyph * ((@line_length - line_text.length)/2)}"
        content_line
      rescue
        puts "line length must be larger to accomodate text"
      end
    end

  end
end
