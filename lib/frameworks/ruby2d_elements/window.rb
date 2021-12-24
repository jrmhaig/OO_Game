# frozen_string_literal: true

require 'ruby2d'

module Frameworks
  module Ruby2dElements
    class Window
      include Ruby2D::DSL

      def initialize(width:, height:, title:)
        set(width:, height:, title:)
      end
    end
  end
end
