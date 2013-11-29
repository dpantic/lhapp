require "spec_helper"

describe IpcSeatsController do
  describe "routing" do

    it "routes to #index" do
      get("/ipc_seats").should route_to("ipc_seats#index")
    end

    it "routes to #new" do
      get("/ipc_seats/new").should route_to("ipc_seats#new")
    end

    it "routes to #show" do
      get("/ipc_seats/1").should route_to("ipc_seats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ipc_seats/1/edit").should route_to("ipc_seats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ipc_seats").should route_to("ipc_seats#create")
    end

    it "routes to #update" do
      put("/ipc_seats/1").should route_to("ipc_seats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ipc_seats/1").should route_to("ipc_seats#destroy", :id => "1")
    end

  end
end
