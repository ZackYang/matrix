require 'helper'

describe Matrix::SubMatrix do

  let(:sub_matrix_text) do
    Fixtures.sub_matrix_text
  end
  
  let(:sub_matrix) { described_class.new sub_matrix_text }

  describe '#assign_to_collection' do
    
    specify { sub_matrix.assign_to_collection.should be_an_instance_of(Matrix::ElementsCollection) }
    
  end

end