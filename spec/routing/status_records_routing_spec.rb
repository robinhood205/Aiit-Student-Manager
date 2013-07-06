require "spec_helper"

describe StatusRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/status_records").should route_to("status_records#index")
    end

    it "routes to #new" do
      get("/status_records/new").should route_to("status_records#new")
    end

    it "routes to #show" do
      get("/status_records/1").should route_to("status_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/status_records/1/edit").should route_to("status_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/status_records").should route_to("status_records#create")
    end

    it "routes to #update" do
      put("/status_records/1").should route_to("status_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/status_records/1").should route_to("status_records#destroy", :id => "1")
    end

  end
end
