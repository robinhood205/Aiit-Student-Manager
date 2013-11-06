# coding: utf-8
require 'spec_helper'

describe "tuitions/show" do
  before(:each) do
    @tuition = assign(:tuition, stub_model(Tuition,
      :transfer_request => false,
      :exemption_type => "全免",
      :scholarship_division => "Scholarship Division",
      :loan_amount => "260,400",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/全免/)
    rendered.should match(/Scholarship Division/)
    rendered.should match(/260,400/)
    rendered.should match(/MyText/)
  end
end
