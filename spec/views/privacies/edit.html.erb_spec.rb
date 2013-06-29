require 'spec_helper'

describe "privacies/edit" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
      :name => "MyString",
      :kana_name => "MyString",
      :eng_name => "MyString",
      :sex => "MyString",
      :nationality => "MyString",
      :zip_code => "MyString",
      :city => "MyString",
      :block => "MyString",
      :address => "MyString",
      :building => "MyString",
      :tel => "MyString",
      :mobile => "MyString",
      :mail_pc => "MyString",
      :mail_mobile => "MyString",
      :graduated_school => "MyString",
      :department => "MyString",
      :occupation => "MyString",
      :company => "MyString",
      :company_address => "MyString"
    ))
  end

  it "renders the edit privacy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", privacy_path(@privacy), "post" do
      assert_select "input#privacy_name[name=?]", "privacy[name]"
      assert_select "input#privacy_kana_name[name=?]", "privacy[kana_name]"
      assert_select "input#privacy_eng_name[name=?]", "privacy[eng_name]"
      assert_select "input#privacy_sex[name=?]", "privacy[sex]"
      assert_select "input#privacy_nationality[name=?]", "privacy[nationality]"
      assert_select "input#privacy_zip_code[name=?]", "privacy[zip_code]"
      assert_select "input#privacy_city[name=?]", "privacy[city]"
      assert_select "input#privacy_block[name=?]", "privacy[block]"
      assert_select "input#privacy_address[name=?]", "privacy[address]"
      assert_select "input#privacy_building[name=?]", "privacy[building]"
      assert_select "input#privacy_tel[name=?]", "privacy[tel]"
      assert_select "input#privacy_mobile[name=?]", "privacy[mobile]"
      assert_select "input#privacy_mail_pc[name=?]", "privacy[mail_pc]"
      assert_select "input#privacy_mail_mobile[name=?]", "privacy[mail_mobile]"
      assert_select "input#privacy_graduated_school[name=?]", "privacy[graduated_school]"
      assert_select "input#privacy_department[name=?]", "privacy[department]"
      assert_select "input#privacy_occupation[name=?]", "privacy[occupation]"
      assert_select "input#privacy_company[name=?]", "privacy[company]"
      assert_select "input#privacy_company_address[name=?]", "privacy[company_address]"
    end
  end
end
