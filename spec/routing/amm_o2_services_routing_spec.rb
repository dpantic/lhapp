require "spec_helper"

describe AmmO2ServicesController do
  describe "routing" do

    it "routes to #index" do
      get("/amm_o2_services").should route_to("amm_o2_services#index")
    end

    it "routes to #new" do
      get("/amm_o2_services/new").should route_to("amm_o2_services#new")
    end

    it "routes to #show" do
      get("/amm_o2_services/1").should route_to("amm_o2_services#show", :id => "1")
    end

    it "routes to #edit" do
      get("/amm_o2_services/1/edit").should route_to("amm_o2_services#edit", :id => "1")
    end

    it "routes to #create" do
      post("/amm_o2_services").should route_to("amm_o2_services#create")
    end

    it "routes to #update" do
      put("/amm_o2_services/1").should route_to("amm_o2_services#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/amm_o2_services/1").should route_to("amm_o2_services#destroy", :id => "1")
    end

  end
end
