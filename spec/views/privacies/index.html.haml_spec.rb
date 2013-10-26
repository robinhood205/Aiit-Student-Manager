require 'spec_helper'

describe "privacies/index" do
  before(:each) do
    assign(:privacies, [
      stub_model(Privacy,
        :aiit_member_id => 1,
        :eng_name => "Eng Name",
        :birthplace => "Birthplace",
        :zip_code => "Zip Code",
        :city => "City",
        :block => "Block",
        :address => "Address",
        :building => "Building",
        :tel => "Tel",
        :mobile => "Mobile",
        :pc_email => "Pc Email",
        :mobile_email => "Mobile Email",
        :graduated_school => "Graduated School",
        :department => "Department",
        :stream => "Stream",
        :graduated_date => "Graduated Date",
        :new_graduates => false,
        :occupation => "Occupation",
        :company => "Company",
        :company_address => "Company Address",
        :work_period => "Work Period",
        :memo => "MyText"
      ),
      stub_model(Privacy,
        :aiit_member_id => 1,
        :eng_name => "Eng Name",
        :birthplace => "Birthplace",
        :zip_code => "Zip Code",
        :city => "City",
        :block => "Block",
        :address => "Address",
        :building => "Building",
        :tel => "Tel",
        :mobile => "Mobile",
        :pc_email => "Pc Email",
        :mobile_email => "Mobile Email",
        :graduated_school => "Graduated School",
        :department => "Department",
        :stream => "Stream",
        :graduated_date => "Graduated Date",
        :new_graduates => false,
        :occupation => "Occupation",
        :company => "Company",
        :company_address => "Company Address",
        :work_period => "Work Period",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of privacies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Eng Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birthplace".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Block".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Building".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Pc Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Email".to_s, :count => 2
    assert_select "tr>td", :text => "Graduated School".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Stream".to_s, :count => 2
    assert_select "tr>td", :text => "Graduated Date".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Company Address".to_s, :count => 2
    assert_select "tr>td", :text => "Work Period".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
