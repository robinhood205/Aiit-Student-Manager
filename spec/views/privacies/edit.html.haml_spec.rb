require 'spec_helper'

describe "privacies/edit" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
      :aiit_member_id => 1,
      :kana_name => "MyString",
      :eng_name => "MyString",
      :gender => "MyString",
      :birthplace => "MyString",
      :zip_code => "MyString",
      :city => "MyString",
      :block => "MyString",
      :address => "MyString",
      :building => "MyString",
      :tel => "MyString",
      :mobile => "MyString",
      :pc_email => "MyString",
      :mobile_email => "MyString",
      :graduated_school => "MyString",
      :department => "MyString",
      :stream => "MyString",
      :graduated_date => "MyString",
      :new_graduates => false,
      :occupation => "MyString",
      :company => "MyString",
      :company_address => "MyString",
      :work_period => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit privacy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", privacy_path(@privacy), "post" do
      assert_select "input#privacy_aiit_member_id[name=?]", "privacy[aiit_member_id]"
      assert_select "input#privacy_kana_name[name=?]", "privacy[kana_name]"
      assert_select "input#privacy_eng_name[name=?]", "privacy[eng_name]"
      assert_select "input#privacy_gender[name=?]", "privacy[gender]"
      assert_select "input#privacy_birthplace[name=?]", "privacy[birthplace]"
      assert_select "input#privacy_zip_code[name=?]", "privacy[zip_code]"
      assert_select "input#privacy_city[name=?]", "privacy[city]"
      assert_select "input#privacy_block[name=?]", "privacy[block]"
      assert_select "input#privacy_address[name=?]", "privacy[address]"
      assert_select "input#privacy_building[name=?]", "privacy[building]"
      assert_select "input#privacy_tel[name=?]", "privacy[tel]"
      assert_select "input#privacy_mobile[name=?]", "privacy[mobile]"
      assert_select "input#privacy_pc_email[name=?]", "privacy[pc_email]"
      assert_select "input#privacy_mobile_email[name=?]", "privacy[mobile_email]"
      assert_select "input#privacy_graduated_school[name=?]", "privacy[graduated_school]"
      assert_select "input#privacy_department[name=?]", "privacy[department]"
      assert_select "input#privacy_stream[name=?]", "privacy[stream]"
      assert_select "input#privacy_graduated_date[name=?]", "privacy[graduated_date]"
      assert_select "input#privacy_new_graduates[name=?]", "privacy[new_graduates]"
      assert_select "input#privacy_occupation[name=?]", "privacy[occupation]"
      assert_select "input#privacy_company[name=?]", "privacy[company]"
      assert_select "input#privacy_company_address[name=?]", "privacy[company_address]"
      assert_select "input#privacy_work_period[name=?]", "privacy[work_period]"
      assert_select "textarea#privacy_memo[name=?]", "privacy[memo]"
    end
  end
end
