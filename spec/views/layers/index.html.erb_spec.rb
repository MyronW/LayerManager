require 'spec_helper'

describe "layers/index" do
  before(:each) do
    assign(:layers, [
      stub_model(Layer,
        :name => "Name",
        :description => "MyText",
        :gds_number => 1,
        :gds_purpose => 2,
        :display => 3,
        :cadence_number => 4,
        :cadence_purpose => 5
      ),
      stub_model(Layer,
        :name => "Name",
        :description => "MyText",
        :gds_number => 1,
        :gds_purpose => 2,
        :display => 3,
        :cadence_number => 4,
        :cadence_purpose => 5
      )
    ])
  end

  it "renders a list of layers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
