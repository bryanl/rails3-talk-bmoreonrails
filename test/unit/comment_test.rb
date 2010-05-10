require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "a comment belongs to a post" do
    post = Factory(:post)
    comment = Factory(:comment, :post => post)
    assert_equal post, comment.post
  end

  test "a comment requires a post" do
    comment = Factory.build(:comment)
    comment.valid?
    assert !comment.errors[:post_id].empty?
    comment.post = Factory(:post)
    comment.valid?
    assert comment.errors[:post_id].empty?
  end
end
