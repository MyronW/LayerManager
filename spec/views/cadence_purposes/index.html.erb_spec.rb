require 'spec_helper'

describe "cadence_purposes/index" do
  before(:each) do
    assign(:cadence_purposes, [
      stub_model(CadencePurpose,
        :name => "Name",
        :number => 1
      ),
      stub_model(CadencePurpose,
        :name => "Name",
        :number => 1
      )
    ])
  end

  it "renders a list of cadence_purposes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
