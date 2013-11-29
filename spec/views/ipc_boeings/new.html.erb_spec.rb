require 'spec_helper'

describe "ipc_boeings/new" do
  before(:each) do
    assign(:ipc_boeing, stub_model(IpcBoeing,
      :ac_type => "MyString",
      :ata => "MyString",
      :system => "MyString",
      :description => "MyString",
      :location => "MyString",
      :add_infos => "MyString",
      :part_number => "MyString",
      :add_material_info => "MyString",
      :ipc => "MyString"
    ).as_new_record)
  end

  it "renders new ipc_boeing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ipc_boeings_path, "post" do
      assert_select "input#ipc_boeing_ac_type[name=?]", "ipc_boeing[ac_type]"
      assert_select "input#ipc_boeing_ata[name=?]", "ipc_boeing[ata]"
      assert_select "input#ipc_boeing_system[name=?]", "ipc_boeing[system]"
      assert_select "input#ipc_boeing_description[name=?]", "ipc_boeing[description]"
      assert_select "input#ipc_boeing_location[name=?]", "ipc_boeing[location]"
      assert_select "input#ipc_boeing_add_infos[name=?]", "ipc_boeing[add_infos]"
      assert_select "input#ipc_boeing_part_number[name=?]", "ipc_boeing[part_number]"
      assert_select "input#ipc_boeing_add_material_info[name=?]", "ipc_boeing[add_material_info]"
      assert_select "input#ipc_boeing_ipc[name=?]", "ipc_boeing[ipc]"
    end
  end
end
