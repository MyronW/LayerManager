require 'spec_helper'

describe "pdks/new" do
  before(:each) do
    assign(:pdk, stub_model(Pdk,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new pdk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pdks_path, "post" do
      assert_select "input#pdk_name[name=?]", "pdk[name]"
    end
  end
end
