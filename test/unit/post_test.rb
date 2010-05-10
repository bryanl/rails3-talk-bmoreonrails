require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "a post has many comments" do
    post = Factory(:post)
    comment = Factory(:comment, :post => post)
    assert post.comments.include?(comment), "should include this comment"
  end

end
