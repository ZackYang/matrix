module Matrix
  class Base
    
    def initialize matrix_text=''
      @matrix_text = matrix_text
      parse
    end
    
    def to_a
      @rows.to_a
    end
    
    private
    
    def parse
      @rows = @matrix_text.split(/\n/)
      @rows.map! do |row|
        row.strip.split(/\s+/).map! {|num| num.to_i}
      end
    end
  
  end

end