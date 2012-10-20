require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe STJ do
  it "has a reference to the lib path" do
    expect(STJ::LIB_PATH).to eq LIB_PATH
  end
end
