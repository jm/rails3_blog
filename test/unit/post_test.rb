require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "renders Markdown after save" do
    post = Post.create(:title => "This post rocks.", :body => "Now *this* is an awesome post.")
    
    assert_equal "<p>Now <em>this</em> is an awesome post.</p>", post.rendered_body.chomp
  end
  
  test "requires title" do
    post = Post.create(:body => "Now *this* is an awesome post.")
    assert !post.valid?
    assert post.errors[:title]
  end
  
  test "requires body" do
    post = Post.create(:title => "This post rocks.")
    assert !post.valid?
    assert post.errors[:body]
  end
end
