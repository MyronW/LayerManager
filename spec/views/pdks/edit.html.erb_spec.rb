require 'spec_helper'

describe "pdks/edit" do
  before(:each) do
    @pdk = assign(:pdk, stub_model(Pdk,
      :name => "MyString"
    ))
  end

  it "renders the edit pdk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pdk_path(@pdk), "post" do
      assert_select "input#pdk_name[name=?]", "pdk[name]"
    end
  end
end
