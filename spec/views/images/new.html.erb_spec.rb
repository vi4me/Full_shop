require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_title[name=?]", "image[title]"

      assert_select "textarea#image_body[name=?]", "image[body]"
    end
  end
end
