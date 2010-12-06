require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rasskey::String" do

  it "should draw the default box with text 'test'" do
    mystr = "test"
    $stdout.should_receive(:puts).with("********\n* test *\n********")
    mystr.to_box
  end

  it "should accept an option hash " do
    mystr = "test"
    $stdout.should_receive(:puts).with("##########################\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n#          test          #\n#                        #\n#                        #\n#                        #\n#                        #\n#                        #\n##########################")
    mystr.to_box({:padding => 10, :glyph => "#"})
  end

end
