require 'spec_helper'

describe "layers/show" do
  before(:each) do
    @layer = assign(:layer, stub_model(Layer,
      :name => "Name",
      :description => "MyText",
      :gds_number => 1,
      :gds_purpose => 2,
      :display => 3,
      :cadence_number => 4,
      :cadence_purpose => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
