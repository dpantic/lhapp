require "spec_helper"

describe IpcBoeingsController do
  describe "routing" do

    it "routes to #index" do
      get("/ipc_boeings").should route_to("ipc_boeings#index")
    end

    it "routes to #new" do
      get("/ipc_boeings/new").should route_to("ipc_boeings#new")
    end

    it "routes to #show" do
      get("/ipc_boeings/1").should route_to("ipc_boeings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ipc_boeings/1/edit").should route_to("ipc_boeings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ipc_boeings").should route_to("ipc_boeings#create")
    end

    it "routes to #update" do
      put("/ipc_boeings/1").should route_to("ipc_boeings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ipc_boeings/1").should route_to("ipc_boeings#destroy", :id => "1")
    end

  end
end
