require 'spec_helper'

describe "cadence_purposes/edit" do
  before(:each) do
    @cadence_purpose = assign(:cadence_purpose, stub_model(CadencePurpose,
      :name => "MyString",
      :number => 1
    ))
  end

  it "renders the edit cadence_purpose form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cadence_purpose_path(@cadence_purpose), "post" do
      assert_select "input#cadence_purpose_name[name=?]", "cadence_purpose[name]"
      assert_select "input#cadence_purpose_number[name=?]", "cadence_purpose[number]"
    end
  end
end
