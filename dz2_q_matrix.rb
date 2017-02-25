class Dz2QMatrix
  attr_reader :n
  def initialize(n)
    @n = n
    @n > 10 ? 'Object cant be >10' : to_simple?(@n)
  end

  def to_simple?(n)
    range = [1]
    for i in 0..n
      next unless i > 1
      for j in 2..i
        break if (i % j).zero?
        range << i if j + 1 == i
      end
    end
    print range
  end
end
matrix = Dz2QMatrix.new(10)
