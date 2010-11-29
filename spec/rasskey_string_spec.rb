require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rasskey::String" do

  it "should draw the default box with text 'test'" do
    mystr = "test"
    mystr.to_box.should == "********\n* test *\n********"
  end

  it "should accept an option hash " do
    mystr = "test"
    mystr.to_box({:padding => 10, :glyph => "#"}).should == "##########################\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n#          test          #\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n##########################"
  end

end
