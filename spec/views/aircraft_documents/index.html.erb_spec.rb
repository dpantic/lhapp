require 'spec_helper'

describe "aircraft_documents/index" do
  before(:each) do
    assign(:aircraft_documents, [
      stub_model(AircraftDocument,
        :operator => "",
        :ac_type => "Ac Type",
        :document => "Document",
        :revision => "",
        :rev_checked => "Rev Checked"
      ),
      stub_model(AircraftDocument,
        :operator => "",
        :ac_type => "Ac Type",
        :document => "Document",
        :revision => "",
        :rev_checked => "Rev Checked"
      )
    ])
  end

  it "renders a list of aircraft_documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Ac Type".to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Rev Checked".to_s, :count => 2
  end
end
