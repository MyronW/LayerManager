require 'spec_helper'

describe "cadence_purposes/new" do
  before(:each) do
    assign(:cadence_purpose, stub_model(CadencePurpose,
      :name => "MyString",
      :number => 1
    ).as_new_record)
  end

  it "renders new cadence_purpose form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cadence_purposes_path, "post" do
      assert_select "input#cadence_purpose_name[name=?]", "cadence_purpose[name]"
      assert_select "input#cadence_purpose_number[name=?]", "cadence_purpose[number]"
    end
  end
end
