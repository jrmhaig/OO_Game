# frozen_string_literal: true

require 'frameworks/gosu_elements/window'

module Frameworks
  class GosuFactory
    def window(width:, height:, title:) = Frameworks::GosuElements::Window.new(width:, height:, title:)
  end
end
