require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "get the index" do
    get :index
    assert_response :ok
    assert_not_nil assigns(:posts)
  end

  test "get the new post form" do
    get :new
    assert_response :ok
    assert_not_nil assigns(:post)
  end

  test "create a new post" do
    post :create
    assert_redirected_to posts_path
  end

  test "view an existing post" do
    my_post = Factory(:post)
    get :show, :id => my_post.id
    assert_response :ok
    assert_not_nil assigns(:post)
    assert_not_nil assigns(:comment)
  end
end
