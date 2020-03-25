class Matrix
  attr_reader :matrix
  def initialize(matrix)
    @matrix = matrix.split("\n").map { |row| row.split.map(&:to_i) }
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end
end
