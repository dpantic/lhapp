require 'spec_helper'

describe "amm_o2_services/show" do
  before(:each) do
    @amm_o2_service = assign(:amm_o2_service, stub_model(AmmO2Service,
      :ac_type => "Ac Type",
      :operator => "Operator",
      :system => "System",
      :job => "Job",
      :amm_referenz => "Amm Referenz"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ac Type/)
    rendered.should match(/Operator/)
    rendered.should match(/System/)
    rendered.should match(/Job/)
    rendered.should match(/Amm Referenz/)
  end
end
