module RassKey #:nodoc:
  module String #:nodoc:
    def self.included(base)
      base.class_eval do
        attr_accessor :padding
        attr_accessor :glyph
      end
    end

    def to_box(options = {})
      RassKey::Box.new(options).draw(self)
    end
  end
end

::String.class_eval do
  include RassKey::String
end
