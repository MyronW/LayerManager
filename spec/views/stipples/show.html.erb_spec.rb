require 'spec_helper'

describe "stipples/show" do
  before(:each) do
    @stipple = assign(:stipple, stub_model(Stipple,
      :name => "Name",
      :pattern => "Pattern"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Pattern/)
  end
end
