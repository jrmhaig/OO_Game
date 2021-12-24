# frozen_string_literal: true

require 'frameworks/ruby2d_elements/window'

module Frameworks
  class Ruby2dFactory
    def window(width:, height:, title:) = Frameworks::Ruby2dElements::Window.new(width:, height:, title:)
  end
end
