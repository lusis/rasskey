module RassKey
  class Canvas

    attr_accessor :width
    attr_accessor :height
    attr_accessor :border
    attr_reader :stencil_count
    attr_reader :stencils

    def initialize(width, height)
      @width = width
      @height = height
      @border = nil

      @stencil_count = 0
      @stencils = []
    end

    def area
      @width * @height
    end

    def add(stencil)
      if stencil.area >= self.area || stencil.data.size == 0
        raise "Stencil is too big for defined canvas size: #{stencil.area} > #{self.area}"
      end

      @stencil_count = @stencil_count + 1
      @stencils << stencil
    end

  end

end    
