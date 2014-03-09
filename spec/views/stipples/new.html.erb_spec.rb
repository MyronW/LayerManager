require 'spec_helper'

describe "stipples/new" do
  before(:each) do
    assign(:stipple, stub_model(Stipple,
      :name => "MyString",
      :pattern => "MyString"
    ).as_new_record)
  end

  it "renders new stipple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stipples_path, "post" do
      assert_select "input#stipple_name[name=?]", "stipple[name]"
      assert_select "input#stipple_pattern[name=?]", "stipple[pattern]"
    end
  end
end
