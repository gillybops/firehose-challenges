class Image

  def initialize(raw_data = [])
    @raw_data = raw_data
  end

  def output_image
    @raw_data.each do |row|
      puts row.join
    end
  end
end

  image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
