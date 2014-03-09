require 'spec_helper'

describe "stipples/index" do
  before(:each) do
    assign(:stipples, [
      stub_model(Stipple,
        :name => "Name",
        :pattern => "Pattern"
      ),
      stub_model(Stipple,
        :name => "Name",
        :pattern => "Pattern"
      )
    ])
  end

  it "renders a list of stipples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pattern".to_s, :count => 2
  end
end
