require 'spec_helper'

describe "ipc_seats/edit" do
  before(:each) do
    @ipc_seat = assign(:ipc_seat, stub_model(IpcSeat,
      :manufacturer => "MyString",
      :modell_series => "MyString",
      :description => "MyString",
      :add_infos => "MyString",
      :part_number => "MyString",
      :add_material_info => "MyString",
      :cmm => "MyString"
    ))
  end

  it "renders the edit ipc_seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ipc_seat_path(@ipc_seat), "post" do
      assert_select "input#ipc_seat_manufacturer[name=?]", "ipc_seat[manufacturer]"
      assert_select "input#ipc_seat_modell_series[name=?]", "ipc_seat[modell_series]"
      assert_select "input#ipc_seat_description[name=?]", "ipc_seat[description]"
      assert_select "input#ipc_seat_add_infos[name=?]", "ipc_seat[add_infos]"
      assert_select "input#ipc_seat_part_number[name=?]", "ipc_seat[part_number]"
      assert_select "input#ipc_seat_add_material_info[name=?]", "ipc_seat[add_material_info]"
      assert_select "input#ipc_seat_cmm[name=?]", "ipc_seat[cmm]"
    end
  end
end
