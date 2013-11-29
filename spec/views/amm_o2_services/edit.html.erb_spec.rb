require 'spec_helper'

describe "amm_o2_services/edit" do
  before(:each) do
    @amm_o2_service = assign(:amm_o2_service, stub_model(AmmO2Service,
      :ac_type => "MyString",
      :operator => "MyString",
      :system => "MyString",
      :job => "MyString",
      :amm_referenz => "MyString"
    ))
  end

  it "renders the edit amm_o2_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", amm_o2_service_path(@amm_o2_service), "post" do
      assert_select "input#amm_o2_service_ac_type[name=?]", "amm_o2_service[ac_type]"
      assert_select "input#amm_o2_service_operator[name=?]", "amm_o2_service[operator]"
      assert_select "input#amm_o2_service_system[name=?]", "amm_o2_service[system]"
      assert_select "input#amm_o2_service_job[name=?]", "amm_o2_service[job]"
      assert_select "input#amm_o2_service_amm_referenz[name=?]", "amm_o2_service[amm_referenz]"
    end
  end
end
