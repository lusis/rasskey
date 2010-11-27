module RassKey
  class Box
    class << self
      attr_accessor :default_padding
      attr_accessor :default_glyph

    end

    @default_padding = 1
    @default_glyph = '*'

    attr_accessor :padding
    attr_accessor :glyph

    def initialize(options = {})
      options = {
        :padding => RassKey::Box.default_padding,
        :glyph => RassKey::Box.default_glyph
      }.merge(options)

      self.padding = options[:padding]
      self.glyph = options[:glyph]

      super()
    end

    def draw(data)
      @glyph.length == 1 ? (@glyph = @glyph) : (@glyph = @glyph[0,1])
      whitespace = " " * ( data.length + (@padding * 2) )
      spacing = " " * @padding || " "
      content_line = "#{@glyph}#{spacing}#{data}#{spacing}#{@glyph}"
      top = @glyph * content_line.length
      side = @glyph 
      bottom = @glyph * content_line.length
      box = []
      box << top
      (@padding/2).times { box << "#{@glyph}#{whitespace}#{@glyph}" }
      box << "#{content_line}"
      (@padding/2).times { box << "#{@glyph}#{whitespace}#{@glyph}" }
      box << bottom
      box.join("\n")
    end

  end
end
