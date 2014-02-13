require 'matrix/element'

class Matrix::ElementsCollection
      
  include Enumerable
      
  def initialize collection=[]
    @collection = collection
  end
      
  def push element
    @collection << element
  end
      
  def each
    @collection.each do |element|
      yield(element)
    end
  end
      
  def sort_by_value!
    @collection = sort_by { |element| element.value }
    self
  end
      
  def sort
  end
      
  class << self
        
    def parse arrays
      collection = self.new
      arrays.each_with_index do |row, y_index|
        row.each_with_index do |value, x_index|
          collection.push Matrix::Element.new(x: x_index, y: y_index, value: value)
        end
      end
      collection
    end
        
  end
      
end