require 'spec_helper'

describe "ipc_all_acs/index" do
  before(:each) do
    assign(:ipc_all_acs, [
      stub_model(IpcAllAc,
        :system => "System",
        :description => "Description",
        :add_infos => "Add Infos",
        :part_number => "Part Number",
        :mat_nr => "Mat Nr",
        :add_material_info => "Add Material Info",
        :info => "Info"
      ),
      stub_model(IpcAllAc,
        :system => "System",
        :description => "Description",
        :add_infos => "Add Infos",
        :part_number => "Part Number",
        :mat_nr => "Mat Nr",
        :add_material_info => "Add Material Info",
        :info => "Info"
      )
    ])
  end

  it "renders a list of ipc_all_acs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "System".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Add Infos".to_s, :count => 2
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Mat Nr".to_s, :count => 2
    assert_select "tr>td", :text => "Add Material Info".to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
  end
end
