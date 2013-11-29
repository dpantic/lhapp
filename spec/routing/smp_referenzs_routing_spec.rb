require "spec_helper"

describe SmpReferenzsController do
  describe "routing" do

    it "routes to #index" do
      get("/smp_referenzs").should route_to("smp_referenzs#index")
    end

    it "routes to #new" do
      get("/smp_referenzs/new").should route_to("smp_referenzs#new")
    end

    it "routes to #show" do
      get("/smp_referenzs/1").should route_to("smp_referenzs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/smp_referenzs/1/edit").should route_to("smp_referenzs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/smp_referenzs").should route_to("smp_referenzs#create")
    end

    it "routes to #update" do
      put("/smp_referenzs/1").should route_to("smp_referenzs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/smp_referenzs/1").should route_to("smp_referenzs#destroy", :id => "1")
    end

  end
end
