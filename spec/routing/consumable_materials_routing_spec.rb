require "spec_helper"

describe ConsumableMaterialsController do
  describe "routing" do

    it "routes to #index" do
      get("/consumable_materials").should route_to("consumable_materials#index")
    end

    it "routes to #new" do
      get("/consumable_materials/new").should route_to("consumable_materials#new")
    end

    it "routes to #show" do
      get("/consumable_materials/1").should route_to("consumable_materials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consumable_materials/1/edit").should route_to("consumable_materials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consumable_materials").should route_to("consumable_materials#create")
    end

    it "routes to #update" do
      put("/consumable_materials/1").should route_to("consumable_materials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consumable_materials/1").should route_to("consumable_materials#destroy", :id => "1")
    end

  end
end
