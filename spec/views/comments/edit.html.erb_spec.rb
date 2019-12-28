require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :user_name => "MyString",
      :body => "MyText",
      :product_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_user_name[name=?]", "comment[user_name]"

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_product_id[name=?]", "comment[product_id]"
    end
  end
end
