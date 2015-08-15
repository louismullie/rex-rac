require './parser.rb'

class TestLanguageParser
  describe 'Testing the Parser' do
    before do
      @evaluator = TestLanguage.new
    end
    
    it 'tests for a digit' do
      @result = @evaluator.parse("2")
      @result.should == 2
    end
    it 'tests for addition' do
         @result = @evaluator.parse("2+2")
         @result.should == 4
    end
       
  end
end