require "spec_helper"

describe PdksController do
  describe "routing" do

    it "routes to #index" do
      get("/pdks").should route_to("pdks#index")
    end

    it "routes to #new" do
      get("/pdks/new").should route_to("pdks#new")
    end

    it "routes to #show" do
      get("/pdks/1").should route_to("pdks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pdks/1/edit").should route_to("pdks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pdks").should route_to("pdks#create")
    end

    it "routes to #update" do
      put("/pdks/1").should route_to("pdks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pdks/1").should route_to("pdks#destroy", :id => "1")
    end

  end
end
