require "spec_helper"

describe OpeningsController do
  describe "routing" do

    it "routes to #index" do
      get("/openings").should route_to("openings#index")
    end

    it "routes to #new" do
      get("/openings/new").should route_to("openings#new")
    end

    it "routes to #show" do
      get("/openings/1").should route_to("openings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/openings/1/edit").should route_to("openings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/openings").should route_to("openings#create")
    end

    it "routes to #update" do
      put("/openings/1").should route_to("openings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/openings/1").should route_to("openings#destroy", :id => "1")
    end

  end
end
