require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rasskey::Box" do
  it "should return a RassKey::Box object" do
    box = RassKey::Box.new
    box.padding.should == 1
    box.glyph.should == "*"
    box.caption.should == nil
    box.text.should == " "
    box.width.should == 5
    box.height.should == 3
    box.instance_of?(RassKey::Box).should be_true
  end

  it "should draw the default box with text 'test'" do
    box = RassKey::Box.new "test"
    box.text.should == "test"
    box.padding.should == 1
    box.glyph.should == "*"
    box.width.should == 8
    box.height.should == 3
    box.data.kind_of?(Array).should == true
    $stdout.should_receive(:puts).with("********\n* test *\n********")
    box.draw
  end

  it "should accept an option hash " do
    box = RassKey::Box.new "test", :padding => 10, :glyph => "#"
    $stdout.should_receive(:puts).with("##########################\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n#          test          #\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n##########################")
    box.draw
  end

  it "should accept attr_accessors" do
    box = RassKey::Box.new "test"
    box.padding = 3
    box.glyph = "%"
    $stdout.should_receive(:puts).with("%%%%%%%%%%%%\n%          %\n%   test   %\n%          %\n%%%%%%%%%%%%")
    box.draw
  end
end
