require "spec_helper"

describe AircraftDocumentsController do
  describe "routing" do

    it "routes to #index" do
      get("/aircraft_documents").should route_to("aircraft_documents#index")
    end

    it "routes to #new" do
      get("/aircraft_documents/new").should route_to("aircraft_documents#new")
    end

    it "routes to #show" do
      get("/aircraft_documents/1").should route_to("aircraft_documents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aircraft_documents/1/edit").should route_to("aircraft_documents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aircraft_documents").should route_to("aircraft_documents#create")
    end

    it "routes to #update" do
      put("/aircraft_documents/1").should route_to("aircraft_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aircraft_documents/1").should route_to("aircraft_documents#destroy", :id => "1")
    end

  end
end
