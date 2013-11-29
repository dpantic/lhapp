require 'spec_helper'

describe "consumable_materials/index" do
  before(:each) do
    assign(:consumable_materials, [
      stub_model(ConsumableMaterial,
        :product_type => "Product Type",
        :description => "Description",
        :add_infos => "Add Infos",
        :mat_nr => "Mat Nr",
        :part_number => "Part Number"
      ),
      stub_model(ConsumableMaterial,
        :product_type => "Product Type",
        :description => "Description",
        :add_infos => "Add Infos",
        :mat_nr => "Mat Nr",
        :part_number => "Part Number"
      )
    ])
  end

  it "renders a list of consumable_materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Product Type".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Add Infos".to_s, :count => 2
    assert_select "tr>td", :text => "Mat Nr".to_s, :count => 2
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
  end
end
