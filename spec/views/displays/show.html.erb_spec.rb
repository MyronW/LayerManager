require 'spec_helper'

describe "displays/show" do
  before(:each) do
    @display = assign(:display, stub_model(Display,
      :name => "Name",
      :stipple_id => 1,
      :fill_id => 2,
      :border_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
