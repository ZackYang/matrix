require 'helper'

describe Matrix::Base do
  
  let(:matrix_text) do
    Fixtures.main_matrix_text
  end
  
  let(:base) { described_class.new(matrix_text) }
  
  describe '#to_a' do
    
    specify do
      base.to_a.should == [
        [12, 32,  9, 11, 34],
        [ 8, 54, 76, 23,  7],
        [27, 18, 25,  9, 43],
        [11, 23, 78, 63, 19],
        [9,  22, 56, 31,  5]
      ]
    end
    
  end
  
end