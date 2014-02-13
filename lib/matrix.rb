$: << File.dirname(__FILE__)

module Matrix

  class << self
    
    def calculate main_file_path=nil, sub_file_path=nil
      main = format_calculate_argument(main_file_path || File.join(File.dirname(__FILE__), '../assets/main_matrix_text'))
      sub  = format_calculate_argument(sub_file_path || File.join(File.dirname(__FILE__), '../assets/sub_matrix_text'))
      main_matrix = Matrix::MainMatrix.new(main)
      sub_matrix = Matrix::SubMatrix.new(sub)
      result = main_matrix.accumulate_by(sub_matrix).map {|row| row.join("\s")}.join("\n")
      puts "The matrix of result is :\n" + result
      puts "\nResult is #{main_matrix.result}"
    end
    
    def format_calculate_argument arg
      File.open(arg, 'r').read
    end
    
  end

end

require 'matrix/base'
require 'matrix/main_matrix'
require 'matrix/sub_matrix'
