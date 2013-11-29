require "spec_helper"

describe IpcAllAcsController do
  describe "routing" do

    it "routes to #index" do
      get("/ipc_all_acs").should route_to("ipc_all_acs#index")
    end

    it "routes to #new" do
      get("/ipc_all_acs/new").should route_to("ipc_all_acs#new")
    end

    it "routes to #show" do
      get("/ipc_all_acs/1").should route_to("ipc_all_acs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ipc_all_acs/1/edit").should route_to("ipc_all_acs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ipc_all_acs").should route_to("ipc_all_acs#create")
    end

    it "routes to #update" do
      put("/ipc_all_acs/1").should route_to("ipc_all_acs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ipc_all_acs/1").should route_to("ipc_all_acs#destroy", :id => "1")
    end

  end
end
