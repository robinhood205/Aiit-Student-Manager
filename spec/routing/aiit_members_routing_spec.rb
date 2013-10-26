require "spec_helper"

describe AiitMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/aiit_members").should route_to("aiit_members#index")
    end

    it "routes to #new" do
      get("/aiit_members/new").should route_to("aiit_members#new")
    end

    it "routes to #show" do
      get("/aiit_members/1").should route_to("aiit_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aiit_members/1/edit").should route_to("aiit_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aiit_members").should route_to("aiit_members#create")
    end

    it "routes to #update" do
      put("/aiit_members/1").should route_to("aiit_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aiit_members/1").should route_to("aiit_members#destroy", :id => "1")
    end

  end
end
