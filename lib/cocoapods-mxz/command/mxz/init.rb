require 'cocoapods-mxz/helper'

module Pod
  class Command
    class Mxz < Command
      class Init < Mxz
        self.summary = 'init cocoapods-mxz'.yellow

        self.description = <<-DESC
          init cocoapods-mxz.
        DESC

        def initialize(argv)
          @name = argv.shift_argument
          super
        end

        def validate!
          super
        end

        def run
          UI.puts "Add your implementation for the cocoapods-mxz plugin in #{__FILE__}"
        end
      end
    end

  end
end