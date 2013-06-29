require "spec_helper"

describe GuarantorsController do
  describe "routing" do

    it "routes to #index" do
      get("/guarantors").should route_to("guarantors#index")
    end

    it "routes to #new" do
      get("/guarantors/new").should route_to("guarantors#new")
    end

    it "routes to #show" do
      get("/guarantors/1").should route_to("guarantors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guarantors/1/edit").should route_to("guarantors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guarantors").should route_to("guarantors#create")
    end

    it "routes to #update" do
      put("/guarantors/1").should route_to("guarantors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guarantors/1").should route_to("guarantors#destroy", :id => "1")
    end

  end
end
