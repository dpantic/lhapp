require 'spec_helper'

describe "consumable_materials/edit" do
  before(:each) do
    @consumable_material = assign(:consumable_material, stub_model(ConsumableMaterial,
      :product_type => "MyString",
      :description => "MyString",
      :add_infos => "MyString",
      :mat_nr => "MyString",
      :part_number => "MyString"
    ))
  end

  it "renders the edit consumable_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumable_material_path(@consumable_material), "post" do
      assert_select "input#consumable_material_product_type[name=?]", "consumable_material[product_type]"
      assert_select "input#consumable_material_description[name=?]", "consumable_material[description]"
      assert_select "input#consumable_material_add_infos[name=?]", "consumable_material[add_infos]"
      assert_select "input#consumable_material_mat_nr[name=?]", "consumable_material[mat_nr]"
      assert_select "input#consumable_material_part_number[name=?]", "consumable_material[part_number]"
    end
  end
end
