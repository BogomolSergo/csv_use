class Dz2QMatrix
  def initialize(n)
    @n = n
    @n > 10 ? 'Object cant be >10' : to_simple?(@n)
  end

  def to_simple?(n)
    @range = [1]
    for i in 0..n
      next unless i > 1
      for j in 2..i
        break if (i % j).zero?
        @range << i if j + 1 == i
      end
    end
    @range
  end

  def q_matrix
    matrix = @range
    matrix2 = []
    i = 0
    matrix.size.times do
      matrix.each_index do |d|
        matrix2 << matrix[d + i]
        i = -matrix.size if i + d == matrix.size - 1
      end
      i += 1
      print "#{matrix2} \n"
      matrix2.clear
    end
  end
end

m = Dz2QMatrix.new(10)
m.q_matrix
