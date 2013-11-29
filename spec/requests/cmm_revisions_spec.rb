require 'spec_helper'

describe "CmmRevisions" do
  describe "GET /cmm_revisions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cmm_revisions_path
      response.status.should be(200)
    end
  end
end
