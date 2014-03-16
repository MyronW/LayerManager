require "spec_helper"

describe CadencePurposesController do
  describe "routing" do

    it "routes to #index" do
      get("/cadence_purposes").should route_to("cadence_purposes#index")
    end

    it "routes to #new" do
      get("/cadence_purposes/new").should route_to("cadence_purposes#new")
    end

    it "routes to #show" do
      get("/cadence_purposes/1").should route_to("cadence_purposes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cadence_purposes/1/edit").should route_to("cadence_purposes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cadence_purposes").should route_to("cadence_purposes#create")
    end

    it "routes to #update" do
      put("/cadence_purposes/1").should route_to("cadence_purposes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cadence_purposes/1").should route_to("cadence_purposes#destroy", :id => "1")
    end

  end
end
