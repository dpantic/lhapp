require "spec_helper"

describe CmmRevisionsController do
  describe "routing" do

    it "routes to #index" do
      get("/cmm_revisions").should route_to("cmm_revisions#index")
    end

    it "routes to #new" do
      get("/cmm_revisions/new").should route_to("cmm_revisions#new")
    end

    it "routes to #show" do
      get("/cmm_revisions/1").should route_to("cmm_revisions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cmm_revisions/1/edit").should route_to("cmm_revisions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cmm_revisions").should route_to("cmm_revisions#create")
    end

    it "routes to #update" do
      put("/cmm_revisions/1").should route_to("cmm_revisions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cmm_revisions/1").should route_to("cmm_revisions#destroy", :id => "1")
    end

  end
end
