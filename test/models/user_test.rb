require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_should_not_save_article_without_title
  	user = User.new 	
  	assert_not user.save
  end
	test "should report error" do
	  # some_undefined_variable is not defined elsewhere in the test case
	  some_undefined_variable
	  assert true
	end
end
