# Prevent bundler errors
module Liquid; class Tag; end; end

module Bunto
  class SeoTag < Liquid::Tag
    VERSION = "6.0.0".freeze
  end
end
