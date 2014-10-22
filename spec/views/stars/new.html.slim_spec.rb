require 'rails_helper'

RSpec.describe "stars/new", :type => :view do
  before(:each) do
    assign(:star, Star.new(
      :user_id => 1,
      :url => "MyText",
      :quatation => "MyString"
    ))
  end

  it "renders new star form" do
    render

    assert_select "form[action=?][method=?]", stars_path, "post" do

      assert_select "input#star_user_id[name=?]", "star[user_id]"

      assert_select "textarea#star_url[name=?]", "star[url]"

      assert_select "input#star_quatation[name=?]", "star[quatation]"
    end
  end
end
