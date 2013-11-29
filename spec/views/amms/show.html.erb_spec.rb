require 'spec_helper'

describe "amms/show" do
  before(:each) do
    @amm = assign(:amm, stub_model(Amm,
      :ac_type => "Ac Type",
      :mm_referenz => "Mm Referenz",
      :bauteil => "Bauteil",
      :eff => "Eff"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ac Type/)
    rendered.should match(/Mm Referenz/)
    rendered.should match(/Bauteil/)
    rendered.should match(/Eff/)
  end
end
