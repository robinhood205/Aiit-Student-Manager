require "spec_helper"

describe StudentsListsController do
  describe "routing" do

    it "routes to #index" do
      get("/students_lists").should route_to("students_lists#index")
    end

    it "routes to #new" do
      get("/students_lists/new").should route_to("students_lists#new")
    end

    it "routes to #show" do
      get("/students_lists/1").should route_to("students_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/students_lists/1/edit").should route_to("students_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/students_lists").should route_to("students_lists#create")
    end

    it "routes to #update" do
      put("/students_lists/1").should route_to("students_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/students_lists/1").should route_to("students_lists#destroy", :id => "1")
    end

  end
end
