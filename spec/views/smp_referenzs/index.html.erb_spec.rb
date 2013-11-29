require 'spec_helper'

describe "smp_referenzs/index" do
  before(:each) do
    assign(:smp_referenzs, [
      stub_model(SmpReferenz,
        :spm_ref => "Spm Ref",
        :bauteil => "Bauteil"
      ),
      stub_model(SmpReferenz,
        :spm_ref => "Spm Ref",
        :bauteil => "Bauteil"
      )
    ])
  end

  it "renders a list of smp_referenzs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Spm Ref".to_s, :count => 2
    assert_select "tr>td", :text => "Bauteil".to_s, :count => 2
  end
end
