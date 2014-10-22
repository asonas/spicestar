require 'rails_helper'

RSpec.describe "stars/show", :type => :view do
  before(:each) do
    @star = assign(:star, Star.create!(
      :user_id => 1,
      :url => "MyText",
      :quatation => "Quatation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Quatation/)
  end
end
