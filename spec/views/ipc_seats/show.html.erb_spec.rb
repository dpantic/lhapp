require 'spec_helper'

describe "ipc_seats/show" do
  before(:each) do
    @ipc_seat = assign(:ipc_seat, stub_model(IpcSeat,
      :manufacturer => "Manufacturer",
      :modell_series => "Modell Series",
      :description => "Description",
      :add_infos => "Add Infos",
      :part_number => "Part Number",
      :add_material_info => "Add Material Info",
      :cmm => "Cmm"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manufacturer/)
    rendered.should match(/Modell Series/)
    rendered.should match(/Description/)
    rendered.should match(/Add Infos/)
    rendered.should match(/Part Number/)
    rendered.should match(/Add Material Info/)
    rendered.should match(/Cmm/)
  end
end
