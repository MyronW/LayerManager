require 'spec_helper'

describe "displays/new" do
  before(:each) do
    assign(:display, stub_model(Display,
      :name => "MyString",
      :stipple_id => 1,
      :fill_id => 1,
      :border_id => 1
    ).as_new_record)
  end

  it "renders new display form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", displays_path, "post" do
      assert_select "input#display_name[name=?]", "display[name]"
      assert_select "input#display_stipple_id[name=?]", "display[stipple_id]"
      assert_select "input#display_fill_id[name=?]", "display[fill_id]"
      assert_select "input#display_border_id[name=?]", "display[border_id]"
    end
  end
end
