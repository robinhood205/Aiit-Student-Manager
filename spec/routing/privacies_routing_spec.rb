require "spec_helper"

describe PrivaciesController do
  describe "routing" do

    it "routes to #index" do
      get("/privacies").should route_to("privacies#index")
    end

    it "routes to #new" do
      get("/privacies/new").should route_to("privacies#new")
    end

    it "routes to #show" do
      get("/privacies/1").should route_to("privacies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/privacies/1/edit").should route_to("privacies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/privacies").should route_to("privacies#create")
    end

    it "routes to #update" do
      put("/privacies/1").should route_to("privacies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/privacies/1").should route_to("privacies#destroy", :id => "1")
    end

  end
end
