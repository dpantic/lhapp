require 'spec_helper'

describe "smp_referenzs/edit" do
  before(:each) do
    @smp_referenz = assign(:smp_referenz, stub_model(SmpReferenz,
      :spm_ref => "MyString",
      :bauteil => "MyString"
    ))
  end

  it "renders the edit smp_referenz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", smp_referenz_path(@smp_referenz), "post" do
      assert_select "input#smp_referenz_spm_ref[name=?]", "smp_referenz[spm_ref]"
      assert_select "input#smp_referenz_bauteil[name=?]", "smp_referenz[bauteil]"
    end
  end
end
