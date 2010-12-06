module RassKey
  class Box
    class << self
      attr_accessor :default_padding
      attr_accessor :default_glyph
      attr_accessor :default_caption
    end

    @default_padding = 1
    @default_glyph = '*'
    @default_caption = nil

    attr_accessor :padding
    attr_accessor :glyph
    attr_accessor :caption
    attr_accessor :text

    def initialize(content = " ", options = {})
      options = {
        :padding => RassKey::Box.default_padding,
        :glyph => RassKey::Box.default_glyph,
        :caption => RassKey::Box.default_caption
      }.merge(options)

      self.text = content
      self.padding = options[:padding]
      self.glyph = options[:glyph]
      self.caption = options[:caption]

      create
      super()
    end

    def draw()
      puts create.join("\n")
    end

    def area
      @width * @height
    end

    def data
      @data
    end

    def width
      create
      @data[0].length
    end

    def height
      create
      @data.size
    end

    def area
      create
      self.width * self.height
    end

    private 
    def create()
      data = self.text
      @glyph.length == 1 ? (@glyph = @glyph) : (@glyph = @glyph[0,1])
      whitespace = " " * ( data.length + (@padding * 2) )
      spacing = " " * @padding || " "
      content_line = "#{@glyph}#{spacing}#{data}#{spacing}#{@glyph}"
      caption_line = "#{spacing}#{@caption}#{spacing}"
      top = @glyph * content_line.length
      side = @glyph 
      bottom = @glyph * content_line.length
      box = []
      box << top
      (@padding/2).times { box << "#{@glyph}#{whitespace}#{@glyph}" }
      box << "#{content_line}"
      (@padding/2).times { box << "#{@glyph}#{whitespace}#{@glyph}" }
      box << bottom
      unless @caption.nil?
        caption_line = "(#{spacing}#{@caption}#{spacing})"
        box << "#{caption_line}"
      end
      @width = box[0].length
      @height = box.size
      @data = box
      box
    end

  end
end
