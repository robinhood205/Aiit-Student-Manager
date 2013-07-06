require "spec_helper"

describe TuitionsController do
  describe "routing" do

    it "routes to #index" do
      get("/tuitions").should route_to("tuitions#index")
    end

    it "routes to #new" do
      get("/tuitions/new").should route_to("tuitions#new")
    end

    it "routes to #show" do
      get("/tuitions/1").should route_to("tuitions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tuitions/1/edit").should route_to("tuitions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tuitions").should route_to("tuitions#create")
    end

    it "routes to #update" do
      put("/tuitions/1").should route_to("tuitions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tuitions/1").should route_to("tuitions#destroy", :id => "1")
    end

  end
end
