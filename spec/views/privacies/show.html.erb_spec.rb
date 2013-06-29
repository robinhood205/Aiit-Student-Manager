require 'spec_helper'

describe "privacies/show" do
  before(:each) do
    @privacy = assign(:privacy, stub_model(Privacy,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Kana Name/)
    rendered.should match(/Eng Name/)
    rendered.should match(/Sex/)
    rendered.should match(/Nationality/)
    rendered.should match(/Zip Code/)
    rendered.should match(/City/)
    rendered.should match(/Block/)
    rendered.should match(/Address/)
    rendered.should match(/Building/)
    rendered.should match(/Tel/)
    rendered.should match(/Mobile/)
    rendered.should match(/Mail Pc/)
    rendered.should match(/Mail Mobile/)
    rendered.should match(/Graduated School/)
    rendered.should match(/Department/)
    rendered.should match(/Occupation/)
    rendered.should match(/Company/)
    rendered.should match(/Company Address/)
  end
end
