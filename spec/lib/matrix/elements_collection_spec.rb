require 'helper'

describe Matrix::ElementsCollection do
  
  describe '#sort_by_value!' do
    
    let(:el1) { Matrix::Element.new x: 0, y: 0, value: 4 }
    let(:el2) { Matrix::Element.new x: 1, y: 0, value: 2 }
    let(:collection) { described_class.new([el1, el2]) }
    
    before { collection.sort_by_value! }
    
    specify { collection.instance_eval('@collection').should == [el2, el1] }
    
    
  end

end