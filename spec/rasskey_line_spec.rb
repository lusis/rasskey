require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rasskey::Line" do
  it "should return a RassKey::Line object" do
    line = RassKey::Line.new
    line.padding.should == 1
    line.glyph.should == "-"
    line.width.should == 20
    line.instance_of?(RassKey::Line).should be_true
  end

  it "should draw the default line with text 'test'" do
    line = RassKey::Line.new
    line.draw("test").should == "------- test -------"
  end

  it "should accept an option hash " do
    line = RassKey::Line.new :padding => 2, :glyph => "=", :width => 50
    line.draw("test").should == "=====================  test  ====================="
  end

  it "should accept attr_accessors" do
    line = RassKey::Line.new
    line.padding = 2
    line.glyph = "="
    line.width = 50
    line.draw("test").should == "=====================  test  ====================="
  end
end
