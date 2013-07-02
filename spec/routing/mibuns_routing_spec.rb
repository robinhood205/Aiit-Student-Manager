require "spec_helper"

describe MibunsController do
  describe "routing" do

    it "routes to #index" do
      get("/mibuns").should route_to("mibuns#index")
    end

    it "routes to #new" do
      get("/mibuns/new").should route_to("mibuns#new")
    end

    it "routes to #show" do
      get("/mibuns/1").should route_to("mibuns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mibuns/1/edit").should route_to("mibuns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mibuns").should route_to("mibuns#create")
    end

    it "routes to #update" do
      put("/mibuns/1").should route_to("mibuns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mibuns/1").should route_to("mibuns#destroy", :id => "1")
    end

  end
end
