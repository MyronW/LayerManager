require 'spec_helper'

describe "layers/edit" do
  before(:each) do
    @layer = assign(:layer, stub_model(Layer,
      :name => "MyString",
      :description => "MyText",
      :gds_number => 1,
      :gds_purpose => 1,
      :display => 1,
      :cadence_number => 1,
      :cadence_purpose => 1
    ))
  end

  it "renders the edit layer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", layer_path(@layer), "post" do
      assert_select "input#layer_name[name=?]", "layer[name]"
      assert_select "textarea#layer_description[name=?]", "layer[description]"
      assert_select "input#layer_gds_number[name=?]", "layer[gds_number]"
      assert_select "input#layer_gds_purpose[name=?]", "layer[gds_purpose]"
      assert_select "input#layer_display[name=?]", "layer[display]"
      assert_select "input#layer_cadence_number[name=?]", "layer[cadence_number]"
      assert_select "input#layer_cadence_purpose[name=?]", "layer[cadence_purpose]"
    end
  end
end
