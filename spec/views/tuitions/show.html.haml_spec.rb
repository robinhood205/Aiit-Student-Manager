require 'spec_helper'

describe "tuitions/show" do
  before(:each) do
    @tuition = assign(:tuition, stub_model(Tuition,
      :transfer_request => false,
      :exemption_type => "Exemption Type",
      :scholarship_division => "Scholarship Division",
      :loan_amount => "Loan Amount",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/Exemption Type/)
    rendered.should match(/Scholarship Division/)
    rendered.should match(/Loan Amount/)
    rendered.should match(/MyText/)
  end
end
