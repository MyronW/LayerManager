require 'spec_helper'

describe "cadence_purposes/show" do
  before(:each) do
    @cadence_purpose = assign(:cadence_purpose, stub_model(CadencePurpose,
      :name => "Name",
      :number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
