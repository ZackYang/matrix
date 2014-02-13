require 'helper'

describe Matrix::MainMatrix do

  let(:main_matrix_text) do
    Fixtures.main_matrix_text
  end
  
  let(:main_matrix) { described_class.new main_matrix_text }

  describe '#set' do
    
    before { main_matrix.set x: 0, y: 3, value: 15 }
    
    specify { main_matrix.instance_eval("@result_matrix")[3][0].should == 15 }
    
  end
  
  describe '#accumulate_by' do
    
    #s = <<EOF
    #       12 32 09 11  34
    #       08 54 76 23 07
    #       27  18 25 09 43
    #       11 23 78 63 19
    #       09 22 56  31 05
    # EOF
    
    # The result is 
    # eval(s.split(/[\s\n]+/).map! {|v| v.to_i}.join('+'))
    # = 705
    
    let(:sub_matrix_text) do
      Fixtures.sub_matrix_text
    end
  
    let(:sub_matrix) { Matrix::SubMatrix.new(sub_matrix_text) }
    
    specify { main_matrix.accumulate_by(sub_matrix)[0][0].should == 12 }
    specify { main_matrix.accumulate_by(sub_matrix)[0][1].should == 44 }
    specify { main_matrix.accumulate_by(sub_matrix)[2][2].should == 705 }
    specify do
      main_matrix.accumulate_by(sub_matrix)
      main_matrix.result.should == 705
    end
    
  end

end