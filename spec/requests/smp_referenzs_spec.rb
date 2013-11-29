require 'spec_helper'

describe "SmpReferenzs" do
  describe "GET /smp_referenzs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get smp_referenzs_path
      response.status.should be(200)
    end
  end
end
