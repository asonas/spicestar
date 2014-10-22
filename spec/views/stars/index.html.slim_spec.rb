require 'rails_helper'

RSpec.describe "stars/index", :type => :view do
  before(:each) do
    assign(:stars, [
      Star.create!(
        :user_id => 1,
        :url => "MyText",
        :quatation => "Quatation"
      ),
      Star.create!(
        :user_id => 1,
        :url => "MyText",
        :quatation => "Quatation"
      )
    ])
  end

  it "renders a list of stars" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Quatation".to_s, :count => 2
  end
end
