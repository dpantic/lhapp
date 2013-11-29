require 'spec_helper'

describe "ipc_all_acs/show" do
  before(:each) do
    @ipc_all_ac = assign(:ipc_all_ac, stub_model(IpcAllAc,
      :system => "System",
      :description => "Description",
      :add_infos => "Add Infos",
      :part_number => "Part Number",
      :mat_nr => "Mat Nr",
      :add_material_info => "Add Material Info",
      :info => "Info"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/System/)
    rendered.should match(/Description/)
    rendered.should match(/Add Infos/)
    rendered.should match(/Part Number/)
    rendered.should match(/Mat Nr/)
    rendered.should match(/Add Material Info/)
    rendered.should match(/Info/)
  end
end
