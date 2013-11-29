require 'spec_helper'

describe "aircraft_documents/edit" do
  before(:each) do
    @aircraft_document = assign(:aircraft_document, stub_model(AircraftDocument,
      :operator => "",
      :ac_type => "MyString",
      :document => "MyString",
      :revision => "",
      :rev_checked => "MyString"
    ))
  end

  it "renders the edit aircraft_document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aircraft_document_path(@aircraft_document), "post" do
      assert_select "input#aircraft_document_operator[name=?]", "aircraft_document[operator]"
      assert_select "input#aircraft_document_ac_type[name=?]", "aircraft_document[ac_type]"
      assert_select "input#aircraft_document_document[name=?]", "aircraft_document[document]"
      assert_select "input#aircraft_document_revision[name=?]", "aircraft_document[revision]"
      assert_select "input#aircraft_document_rev_checked[name=?]", "aircraft_document[rev_checked]"
    end
  end
end
