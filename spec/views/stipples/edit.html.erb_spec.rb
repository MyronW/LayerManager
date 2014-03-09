require 'spec_helper'

describe "stipples/edit" do
  before(:each) do
    @stipple = assign(:stipple, stub_model(Stipple,
      :name => "MyString",
      :pattern => "MyString"
    ))
  end

  it "renders the edit stipple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stipple_path(@stipple), "post" do
      assert_select "input#stipple_name[name=?]", "stipple[name]"
      assert_select "input#stipple_pattern[name=?]", "stipple[pattern]"
    end
  end
end
