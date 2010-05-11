require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "a comment belongs to a post" do
    post = Factory(:post)
    comment = Factory(:comment, :post => post)
    assert_equal post, comment.post
  end
end
