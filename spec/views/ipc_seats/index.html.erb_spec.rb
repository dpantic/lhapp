require 'spec_helper'

describe "ipc_seats/index" do
  before(:each) do
    assign(:ipc_seats, [
      stub_model(IpcSeat,
        :manufacturer => "Manufacturer",
        :modell_series => "Modell Series",
        :description => "Description",
        :add_infos => "Add Infos",
        :part_number => "Part Number",
        :add_material_info => "Add Material Info",
        :cmm => "Cmm"
      ),
      stub_model(IpcSeat,
        :manufacturer => "Manufacturer",
        :modell_series => "Modell Series",
        :description => "Description",
        :add_infos => "Add Infos",
        :part_number => "Part Number",
        :add_material_info => "Add Material Info",
        :cmm => "Cmm"
      )
    ])
  end

  it "renders a list of ipc_seats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Modell Series".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Add Infos".to_s, :count => 2
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Add Material Info".to_s, :count => 2
    assert_select "tr>td", :text => "Cmm".to_s, :count => 2
  end
end
