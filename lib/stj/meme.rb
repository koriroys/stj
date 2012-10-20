module STJ
  class Meme
    attr_reader :default_phrase, :first_phrase, :image

    def initialize(first_phrase)
      @default_phrase = "then i spoke to joe"
      @first_phrase = first_phrase
      @image = File.join(STJ::LIB_PATH, "images", 'crying-girl-joe.jpg')
    end

    def output_file_name
      name = first_phrase.downcase.gsub(/\s+/, '_').gsub(/\W/, '')
      "tistj_#{name}.jpg"
    end

    def create(path)
      FileUtils.cp(image, File.join(path, output_file_name))
    end

  end

end