=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  def self.value(colors)
    colors_arr = %w[black brown red orange yellow green blue violet grey white]
    colors_arr.index(colors[0]) * 10 + colors_arr.index(colors[1])
  end
end
