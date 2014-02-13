require 'helper'

describe Matrix::Element do

  describe '#new' do
    
    let(:ele) { Matrix::Element.new x: 0, y: 1, value: 4  }
    
    specify { ele.value.should ==  4 }
    specify { ele.x_index.should ==  0 }
    specify { ele.y_index.should ==  1 }
    
  end

end