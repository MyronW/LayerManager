require 'spec_helper'

describe "displays/index" do
  before(:each) do
    assign(:displays, [
      stub_model(Display,
        :name => "Name",
        :stipple_id => 1,
        :fill_id => 2,
        :border_id => 3
      ),
      stub_model(Display,
        :name => "Name",
        :stipple_id => 1,
        :fill_id => 2,
        :border_id => 3
      )
    ])
  end

  it "renders a list of displays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
