# rasskey - Ruby ASCII Helpers
# Copyright (C) 2010  John E. Vincent
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
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
