require 'stj/meme'

describe STJ::Meme do

  it "has a default bottom phrase" do
    expect(STJ::Meme.new("").default_phrase).to eq("then i spoke to joe")
  end

  it "have a first_phrase" do
    expect(STJ::Meme.new("this is a test").first_phrase).to eq("this is a test")
  end

  it "has an image" do
    expect(STJ::Meme.new("").image).to eq(File.join(LIB_PATH, 'images', 'crying-girl-joe.jpg'))
  end

  it "has an output file name" do
    expect(STJ::Meme.new("I didn't know    how to make gems").output_file_name).to eq("tistj_i_didnt_know_how_to_make_gems.jpg")
  end

end