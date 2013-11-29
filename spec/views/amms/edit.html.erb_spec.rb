require 'spec_helper'

describe "amms/edit" do
  before(:each) do
    @amm = assign(:amm, stub_model(Amm,
      :ac_type => "MyString",
      :mm_referenz => "MyString",
      :bauteil => "MyString",
      :eff => "MyString"
    ))
  end

  it "renders the edit amm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", amm_path(@amm), "post" do
      assert_select "input#amm_ac_type[name=?]", "amm[ac_type]"
      assert_select "input#amm_mm_referenz[name=?]", "amm[mm_referenz]"
      assert_select "input#amm_bauteil[name=?]", "amm[bauteil]"
      assert_select "input#amm_eff[name=?]", "amm[eff]"
    end
  end
end
