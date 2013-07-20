require 'spec_helper'

describe "privacies/show" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
      :aiit_member_id => 1,
      :kana_name => "Kana Name",
      :eng_name => "Eng Name",
      :gender => "Gender",
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Kana Name/)
    rendered.should match(/Eng Name/)
    rendered.should match(/Gender/)
    rendered.should match(/Birthplace/)
    rendered.should match(/Zip Code/)
    rendered.should match(/City/)
    rendered.should match(/Block/)
    rendered.should match(/Address/)
    rendered.should match(/Building/)
    rendered.should match(/Tel/)
    rendered.should match(/Mobile/)
    rendered.should match(/Pc Email/)
    rendered.should match(/Mobile Email/)
    rendered.should match(/Graduated School/)
    rendered.should match(/Department/)
    rendered.should match(/Stream/)
    rendered.should match(/Graduated Date/)
    rendered.should match(/false/)
    rendered.should match(/Occupation/)
    rendered.should match(/Company/)
    rendered.should match(/Company Address/)
    rendered.should match(/Work Period/)
    rendered.should match(/MyText/)
  end
end
