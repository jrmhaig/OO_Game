#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << File.expand_path('lib', __dir__)

factory = case ARGV[0]
          when 'gosu'
            require 'frameworks/gosu_factory'
            Frameworks::GosuFactory.new
          when 'ruby2d'
            require 'frameworks/ruby2d_factory'
            Frameworks::Ruby2dFactory.new
          else
            puts "Unknown framework '#{ARGV[0]}'"
            puts 'Available options; gosu, ruby2d'
            exit 0
          end

window = factory.window(width: 600, height: 800, title: 'Test game')
window.show
