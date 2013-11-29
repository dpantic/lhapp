require "spec_helper"

describe AmmsController do
  describe "routing" do

    it "routes to #index" do
      get("/amms").should route_to("amms#index")
    end

    it "routes to #new" do
      get("/amms/new").should route_to("amms#new")
    end

    it "routes to #show" do
      get("/amms/1").should route_to("amms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/amms/1/edit").should route_to("amms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/amms").should route_to("amms#create")
    end

    it "routes to #update" do
      put("/amms/1").should route_to("amms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/amms/1").should route_to("amms#destroy", :id => "1")
    end

  end
end
