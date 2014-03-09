require "spec_helper"

describe StipplesController do
  describe "routing" do

    it "routes to #index" do
      get("/stipples").should route_to("stipples#index")
    end

    it "routes to #new" do
      get("/stipples/new").should route_to("stipples#new")
    end

    it "routes to #show" do
      get("/stipples/1").should route_to("stipples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stipples/1/edit").should route_to("stipples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stipples").should route_to("stipples#create")
    end

    it "routes to #update" do
      put("/stipples/1").should route_to("stipples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stipples/1").should route_to("stipples#destroy", :id => "1")
    end

  end
end
