require 'spec_helper'

describe "amms/new" do
  before(:each) do
    assign(:amm, stub_model(Amm,
      :ac_type => "MyString",
      :mm_referenz => "MyString",
      :bauteil => "MyString",
      :eff => "MyString"
    ).as_new_record)
  end

  it "renders new amm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", amms_path, "post" do
      assert_select "input#amm_ac_type[name=?]", "amm[ac_type]"
      assert_select "input#amm_mm_referenz[name=?]", "amm[mm_referenz]"
      assert_select "input#amm_bauteil[name=?]", "amm[bauteil]"
      assert_select "input#amm_eff[name=?]", "amm[eff]"
    end
  end
end
