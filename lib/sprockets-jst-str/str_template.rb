require 'tilt'

module JstStr

  # Tilt engine class for the String compiler.
  class StrTemplate < Tilt::Template

    def self.engine_initialized?
      true
    end

    def initialize_engine
    end

    def prepare
    end

    # Compile template data into a simple JS string.
    def evaluate(scope, locals, &block)

      str = data
      str.gsub!(/\\/) { '\\\\' }
      str.gsub!(/'/) { "\\'" }
      str.gsub!(/\r/, '\\r')
      str.gsub!(/\n/, '\\n')
      str.gsub!(/\t/, '\\t')

      "'#{str}';"
    end
  end
end
