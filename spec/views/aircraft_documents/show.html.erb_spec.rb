require 'spec_helper'

describe "aircraft_documents/show" do
  before(:each) do
    @aircraft_document = assign(:aircraft_document, stub_model(AircraftDocument,
      :operator => "",
      :ac_type => "Ac Type",
      :document => "Document",
      :revision => "",
      :rev_checked => "Rev Checked"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Ac Type/)
    rendered.should match(/Document/)
    rendered.should match(//)
    rendered.should match(/Rev Checked/)
  end
end
