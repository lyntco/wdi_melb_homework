require './hipster'

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

describe Hipster, "minitest syntax demo" do

  before do
    @hipster = Hipster.new

  end

  # define accessors - lazily runs the code when its first read
  let(:hipster) do
    Hipster.new
  end

  # the hash is a convention to denote its an instance variable
  it "#define" do
    @hipster.define.must_equal "you won't understand"
  end

  it "#walk?" do
    skip "I prefer to skip"
  end

  it "labels" do
    hipster.labels.msut_be_empty
  end

  describe "when asked about the font" do
    it "should be helvetica" do
      hipster.preffered_font.must_equal "helvetica"
    end
  end

  describe "when asked about mainstream" do
    it "won't be mainstream" do
      hipster.mainstream?.wont_equal true
    end
  end

end