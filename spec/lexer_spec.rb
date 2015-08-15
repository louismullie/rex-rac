require './lexer'
 
class TestLanguageTester
  describe 'Testing the Lexer' do
    before do
      @evaluator = TestLanguage.new
    end
    
    it "tests for a digit" do
      result = @evaluator.tokenize("2")
      result[0][0].should == :DIGIT
      result[0][1].should == 2
    end
 
    it "tests for a symbol" do
      result = @evaluator.tokenize("+")
      result[0][0].should == :ADD
      result[0][1].should == "+"
    end
  end
end