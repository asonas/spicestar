require 'rails_helper'

RSpec.describe "stars/edit", :type => :view do
  before(:each) do
    @star = assign(:star, Star.create!(
      :user_id => 1,
      :url => "MyText",
      :quatation => "MyString"
    ))
  end

  it "renders the edit star form" do
    render

    assert_select "form[action=?][method=?]", star_path(@star), "post" do

      assert_select "input#star_user_id[name=?]", "star[user_id]"

      assert_select "textarea#star_url[name=?]", "star[url]"

      assert_select "input#star_quatation[name=?]", "star[quatation]"
    end
  end
end
