require 'spec_helper'

describe "privacies/index" do
  before(:each) do
    assign(:privacies, [
      stub_model(Privacy,
        :name => "Name",
        :kana_name => "Kana Name",
        :eng_name => "Eng Name",
        :sex => "Sex",
        :nationality => "Nationality",
        :zip_code => "Zip Code",
        :city => "City",
        :block => "Block",
        :address => "Address",
        :building => "Building",
        :tel => "Tel",
        :mobile => "Mobile",
        :mail_pc => "Mail Pc",
        :mail_mobile => "Mail Mobile",
        :graduated_school => "Graduated School",
        :department => "Department",
        :occupation => "Occupation",
        :company => "Company",
        :company_address => "Company Address"
      ),
      stub_model(Privacy,
        :name => "Name",
        :kana_name => "Kana Name",
        :eng_name => "Eng Name",
        :sex => "Sex",
        :nationality => "Nationality",
        :zip_code => "Zip Code",
        :city => "City",
        :block => "Block",
        :address => "Address",
        :building => "Building",
        :tel => "Tel",
        :mobile => "Mobile",
        :mail_pc => "Mail Pc",
        :mail_mobile => "Mail Mobile",
        :graduated_school => "Graduated School",
        :department => "Department",
        :occupation => "Occupation",
        :company => "Company",
        :company_address => "Company Address"
      )
    ])
  end

  it "renders a list of privacies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kana Name".to_s, :count => 2
    assert_select "tr>td", :text => "Eng Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Block".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Building".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Mail Pc".to_s, :count => 2
    assert_select "tr>td", :text => "Mail Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Graduated School".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Company Address".to_s, :count => 2
  end
end
