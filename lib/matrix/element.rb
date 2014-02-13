class Matrix::Element
    
  attr_accessor :x_index, :y_index, :value
      
  def initialize options={}
    @x_index = options[:x]
    @y_index = options[:y]
    @value   = options[:value]
  end
      
end