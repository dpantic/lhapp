require 'spec_helper'

describe "IpcSeats" do
  describe "GET /ipc_seats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ipc_seats_path
      response.status.should be(200)
    end
  end
end
