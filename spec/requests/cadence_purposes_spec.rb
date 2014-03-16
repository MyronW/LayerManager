require 'spec_helper'

describe "CadencePurposes" do
  describe "GET /cadence_purposes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cadence_purposes_path
      response.status.should be(200)
    end
  end
end
