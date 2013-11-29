require 'spec_helper'

describe "amms/index" do
  before(:each) do
    assign(:amms, [
      stub_model(Amm,
        :ac_type => "Ac Type",
        :mm_referenz => "Mm Referenz",
        :bauteil => "Bauteil",
        :eff => "Eff"
      ),
      stub_model(Amm,
        :ac_type => "Ac Type",
        :mm_referenz => "Mm Referenz",
        :bauteil => "Bauteil",
        :eff => "Eff"
      )
    ])
  end

  it "renders a list of amms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ac Type".to_s, :count => 2
    assert_select "tr>td", :text => "Mm Referenz".to_s, :count => 2
    assert_select "tr>td", :text => "Bauteil".to_s, :count => 2
    assert_select "tr>td", :text => "Eff".to_s, :count => 2
  end
end
