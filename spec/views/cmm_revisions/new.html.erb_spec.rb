require 'spec_helper'

describe "cmm_revisions/new" do
  before(:each) do
    assign(:cmm_revision, stub_model(CmmRevision,
      :ac_type => "MyString",
      :type => "",
      :manufacturer => "MyString",
      :part_number => "MyString",
      :model => "MyString",
      :cmm => "MyString",
      :revision_date => "MyString",
      :issue => "MyString",
      :rev_checked => "MyString",
      :not_in_use => "MyString"
    ).as_new_record)
  end

  it "renders new cmm_revision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cmm_revisions_path, "post" do
      assert_select "input#cmm_revision_ac_type[name=?]", "cmm_revision[ac_type]"
      assert_select "input#cmm_revision_type[name=?]", "cmm_revision[type]"
      assert_select "input#cmm_revision_manufacturer[name=?]", "cmm_revision[manufacturer]"
      assert_select "input#cmm_revision_part_number[name=?]", "cmm_revision[part_number]"
      assert_select "input#cmm_revision_model[name=?]", "cmm_revision[model]"
      assert_select "input#cmm_revision_cmm[name=?]", "cmm_revision[cmm]"
      assert_select "input#cmm_revision_revision_date[name=?]", "cmm_revision[revision_date]"
      assert_select "input#cmm_revision_issue[name=?]", "cmm_revision[issue]"
      assert_select "input#cmm_revision_rev_checked[name=?]", "cmm_revision[rev_checked]"
      assert_select "input#cmm_revision_not_in_use[name=?]", "cmm_revision[not_in_use]"
    end
  end
end
