require 'spec_helper'

describe "IpcAllAcs" do
  describe "GET /ipc_all_acs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ipc_all_acs_path
      response.status.should be(200)
    end
  end
end
