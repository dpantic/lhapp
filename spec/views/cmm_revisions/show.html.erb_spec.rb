require 'spec_helper'

describe "cmm_revisions/show" do
  before(:each) do
    @cmm_revision = assign(:cmm_revision, stub_model(CmmRevision,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ac Type/)
    rendered.should match(/Type/)
    rendered.should match(/Manufacturer/)
    rendered.should match(/Part Number/)
    rendered.should match(/Model/)
    rendered.should match(/Cmm/)
    rendered.should match(/Revision Date/)
    rendered.should match(/Issue/)
    rendered.should match(/Rev Checked/)
    rendered.should match(/Not In Use/)
  end
end
