require "spec_helper"

describe StudentListsController do
  describe "routing" do

    it "routes to #index" do
      get("/student_lists").should route_to("student_lists#index")
    end

    it "routes to #new" do
      get("/student_lists/new").should route_to("student_lists#new")
    end

    it "routes to #show" do
      get("/student_lists/1").should route_to("student_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/student_lists/1/edit").should route_to("student_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/student_lists").should route_to("student_lists#create")
    end

    it "routes to #update" do
      put("/student_lists/1").should route_to("student_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/student_lists/1").should route_to("student_lists#destroy", :id => "1")
    end

  end
end
