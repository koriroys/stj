require 'stj'
require 'mini_magick'

module STJ
  class Meme
    attr_reader :default_phrase, :first_phrase, :image

    def initialize(first_phrase)
      @default_phrase = "THEN I SPOKE TO JOE"
      @first_phrase = first_phrase
      @image = File.join(STJ::LIB_PATH, "images", 'crying-girl-joe.jpg')
    end

    def output_file_name
      name = first_phrase.downcase.gsub(/\s+/, '_').gsub(/\W/, '')
      "tistj_#{name}.jpg"
    end

    def create(path)
      point_size = 50
      img = MiniMagick::Image.open(image)
      img.combine_options do |c|
        c.gravity 'South'
        c.font File.join(STJ::LIB_PATH, 'fonts', 'impact.ttf')
        c.pointsize '50'
        c.stroke '#000000'
        c.draw "text 10,0 '#{default_phrase}'"
        c.fill("#FFFFFF")

        c.gravity 'North'
        if first_phrase.size > 20
          point_size -= (first_phrase.size - 20) * 1.25
        end
        point_size = 25 if point_size < 25

        c.pointsize point_size.to_s
        c.stroke '#000000'
        c.draw "text 10,0 '#{first_phrase}'"
        c.fill("#FFFFFF")
      end
      img.write(File.join(path, output_file_name))
    end

  end

end