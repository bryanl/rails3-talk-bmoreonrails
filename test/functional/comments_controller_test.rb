require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create a new comment" do
    mypost = Factory(:post)
    post :create, :post_id => mypost.id, :comment => Factory.attributes_for(:comment)
    assert_redirected_to [mypost]
  end
end
