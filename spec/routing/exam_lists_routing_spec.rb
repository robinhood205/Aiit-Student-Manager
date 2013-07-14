require "spec_helper"

describe ExamListsController do
  describe "routing" do

    it "routes to #index" do
      get("/exam_lists").should route_to("exam_lists#index")
    end

    it "routes to #new" do
      get("/exam_lists/new").should route_to("exam_lists#new")
    end

    it "routes to #show" do
      get("/exam_lists/1").should route_to("exam_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exam_lists/1/edit").should route_to("exam_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exam_lists").should route_to("exam_lists#create")
    end

    it "routes to #update" do
      put("/exam_lists/1").should route_to("exam_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exam_lists/1").should route_to("exam_lists#destroy", :id => "1")
    end

  end
end
