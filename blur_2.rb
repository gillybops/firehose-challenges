class Image

  def initialize(raw_data = [])
    @raw_data = raw_data
  end

  def output_image
    @raw_data.each do |row|
      puts row.join
    end
  end

  def blur
    @raw_data.each_with_index do |row, row_num|
      row.each_with_index do |item, index|
        if item == 1
          @raw_data[row_num][index - 1] = 1 unless index == 0
          @raw_data[row_num][index + 1] = 1 unless (index + 1) >= row.length
          @raw_data[row_num][index] = 1 unless row_num == 0
          @raw_data[row_num + 1][index] = 1 unless (row_num +1) >= @raw_data.length
        end
      end
    end
    Image.new(@raw_data)
  end
end

  image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
blurred_image = image.blur.output_image
p blurred_image
