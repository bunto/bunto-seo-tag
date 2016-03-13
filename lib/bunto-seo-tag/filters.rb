module BuntoSeoTag
  module Filters
    # This is available in Liquid from version 3 which is required by Bunto 2
    # Provided here for compatibility with Bunto 1.x
    def default(input, default_value = ''.freeze)
      if !input || input.respond_to?(:empty?) && input.empty?
        default_value
      else
        input
      end
    end
  end
end
