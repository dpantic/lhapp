require 'spec_helper'

describe "ipc_all_acs/edit" do
  before(:each) do
    @ipc_all_ac = assign(:ipc_all_ac, stub_model(IpcAllAc,
      :system => "MyString",
      :description => "MyString",
      :add_infos => "MyString",
      :part_number => "MyString",
      :mat_nr => "MyString",
      :add_material_info => "MyString",
      :info => "MyString"
    ))
  end

  it "renders the edit ipc_all_ac form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ipc_all_ac_path(@ipc_all_ac), "post" do
      assert_select "input#ipc_all_ac_system[name=?]", "ipc_all_ac[system]"
      assert_select "input#ipc_all_ac_description[name=?]", "ipc_all_ac[description]"
      assert_select "input#ipc_all_ac_add_infos[name=?]", "ipc_all_ac[add_infos]"
      assert_select "input#ipc_all_ac_part_number[name=?]", "ipc_all_ac[part_number]"
      assert_select "input#ipc_all_ac_mat_nr[name=?]", "ipc_all_ac[mat_nr]"
      assert_select "input#ipc_all_ac_add_material_info[name=?]", "ipc_all_ac[add_material_info]"
      assert_select "input#ipc_all_ac_info[name=?]", "ipc_all_ac[info]"
    end
  end
end
