require 'spec_helper'

describe "cmm_revisions/index" do
  before(:each) do
    assign(:cmm_revisions, [
      stub_model(CmmRevision,
        :ac_type => "Ac Type",
        :type => "Type",
        :manufacturer => "Manufacturer",
        :part_number => "Part Number",
        :model => "Model",
        :cmm => "Cmm",
        :revision_date => "Revision Date",
        :issue => "Issue",
        :rev_checked => "Rev Checked",
        :not_in_use => "Not In Use"
      ),
      stub_model(CmmRevision,
        :ac_type => "Ac Type",
        :type => "Type",
        :manufacturer => "Manufacturer",
        :part_number => "Part Number",
        :model => "Model",
        :cmm => "Cmm",
        :revision_date => "Revision Date",
        :issue => "Issue",
        :rev_checked => "Rev Checked",
        :not_in_use => "Not In Use"
      )
    ])
  end

  it "renders a list of cmm_revisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ac Type".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Cmm".to_s, :count => 2
    assert_select "tr>td", :text => "Revision Date".to_s, :count => 2
    assert_select "tr>td", :text => "Issue".to_s, :count => 2
    assert_select "tr>td", :text => "Rev Checked".to_s, :count => 2
    assert_select "tr>td", :text => "Not In Use".to_s, :count => 2
  end
end
