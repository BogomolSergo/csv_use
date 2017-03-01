class Dz2QMatrix
  def initialize(n)
    @n = n # max = 10 digits
    @n > 10 ? 'Object cant be >10' : to_simple?(@n)
  end

  def to_simple?(n)
    @range = [2] # First simple digit.
    (0..n).each do |i|
      next unless i > 1
      (2..i).each do |j|
        break if (i % j).zero?
        @range << i if j.next == i
      end
    end
    @size = @range.size
    @range
  end

  def build_this_shit(matrix = @range, size = @size, matrix2 = [], i = 0)
    matrix.size.times do
      matrix.each_index do |d|
        matrix2 << matrix[d + i]
        i = -size if i + d == size - 1
      end
      i += 1
      print "#{matrix2} \n"
      matrix2.clear
    end
  end
end

m = Dz2QMatrix.new(10)
m.build_this_shit
