require 'spec_helper'

describe "amm_o2_services/index" do
  before(:each) do
    assign(:amm_o2_services, [
      stub_model(AmmO2Service,
        :ac_type => "Ac Type",
        :operator => "Operator",
        :system => "System",
        :job => "Job",
        :amm_referenz => "Amm Referenz"
      ),
      stub_model(AmmO2Service,
        :ac_type => "Ac Type",
        :operator => "Operator",
        :system => "System",
        :job => "Job",
        :amm_referenz => "Amm Referenz"
      )
    ])
  end

  it "renders a list of amm_o2_services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ac Type".to_s, :count => 2
    assert_select "tr>td", :text => "Operator".to_s, :count => 2
    assert_select "tr>td", :text => "System".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Amm Referenz".to_s, :count => 2
  end
end
