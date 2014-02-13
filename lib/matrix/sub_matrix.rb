module Matrix
  class SubMatrix < Matrix::Base
    
    attr_reader :elements_collection
  
    def initialize matrix_text
      super(matrix_text)
      assign_to_collection
    end
  
    def assign_to_collection
      @elements_collection = ElementsCollection.parse(self.to_a).sort_by_value!
    end
    
    def each
      @elements_collection.each do |element|
        yield(element)
      end
    end
  
  end
end

require 'matrix/elements_collection'