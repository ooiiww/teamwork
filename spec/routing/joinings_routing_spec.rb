require "spec_helper"

describe JoiningsController do
  describe "routing" do

    it "routes to #index" do
      get("/joinings").should route_to("joinings#index")
    end

    it "routes to #new" do
      get("/joinings/new").should route_to("joinings#new")
    end

    it "routes to #show" do
      get("/joinings/1").should route_to("joinings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/joinings/1/edit").should route_to("joinings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/joinings").should route_to("joinings#create")
    end

    it "routes to #update" do
      put("/joinings/1").should route_to("joinings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/joinings/1").should route_to("joinings#destroy", :id => "1")
    end

  end
end
