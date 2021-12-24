# frozen_string_literal: true

require 'gosu'

module Frameworks
  module GosuElements
    class Window < Gosu::Window
      def initialize(width:, height:, title:)
        super(width, height)
        self.caption = title
      end
    end
  end
end
