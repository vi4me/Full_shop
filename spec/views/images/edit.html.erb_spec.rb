require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_title[name=?]", "image[title]"

      assert_select "textarea#image_body[name=?]", "image[body]"
    end
  end
end
