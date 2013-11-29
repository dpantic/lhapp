require 'spec_helper'

describe "consumable_materials/show" do
  before(:each) do
    @consumable_material = assign(:consumable_material, stub_model(ConsumableMaterial,
      :product_type => "Product Type",
      :description => "Description",
      :add_infos => "Add Infos",
      :mat_nr => "Mat Nr",
      :part_number => "Part Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Product Type/)
    rendered.should match(/Description/)
    rendered.should match(/Add Infos/)
    rendered.should match(/Mat Nr/)
    rendered.should match(/Part Number/)
  end
end
