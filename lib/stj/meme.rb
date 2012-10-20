module STJ
  class Meme
    attr_reader :default_phrase, :first_phrase, :image

    def initialize(first_phrase)
      @default_phrase = "then i spoke to joe"
      @first_phrase = first_phrase
      @image = File.join(STJ::LIB_PATH, "images", 'crying-girl-joe.jpg')
    end

  end

end