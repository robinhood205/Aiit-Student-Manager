require 'spec_helper'

describe "tuitions/index" do
  before(:each) do
    assign(:tuitions, [
      stub_model(Tuition,
        :transfer_request => false,
        :exemption_type => "Exemption Type",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
        :memo => "MyText"
      ),
      stub_model(Tuition,
        :transfer_request => false,
        :exemption_type => "Exemption Type",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of tuitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Exemption Type".to_s, :count => 2
    assert_select "tr>td", :text => "Scholarship Division".to_s, :count => 2
    assert_select "tr>td", :text => "Loan Amount".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
