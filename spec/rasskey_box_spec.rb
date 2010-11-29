require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rasskey::Box" do
  it "should return a RassKey::Box object" do
    box = RassKey::Box.new
    box.padding.should == 1
    box.glyph.should == "*"
    box.caption.should == nil
    box.instance_of?(RassKey::Box).should be_true
  end

  it "should draw the default box with text 'test'" do
    box = RassKey::Box.new
    box.draw("test").should == "********\n* test *\n********"
  end

  it "should accept an option hash " do
    box = RassKey::Box.new :padding => 10, :glyph => "#"
    box.draw("test").should == "##########################\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n#          test          #\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n##########################"
  end

  it "should accept attr_accessors" do
    box = RassKey::Box.new
    box.padding = 3
    box.glyph = "%"
    box.draw("test").should == "%%%%%%%%%%%%\n%          %\n%   test   %\n%          %\n%%%%%%%%%%%%"
  end
end
