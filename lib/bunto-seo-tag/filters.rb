module Bunto
  class SeoTag
    class Filters
      include Bunto::Filters
      include Liquid::StandardFilters

      def initialize(context)
        @context = context
      end
    end
  end
end
