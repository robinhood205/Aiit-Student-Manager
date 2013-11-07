# coding: utf-8
require 'spec_helper'

describe "tuitions/show" do
  before(:each) do
    @tuition = assign(:tuition, stub_model(Tuition,
      :student_list_id => 1,
      :transfer_request => false,
      :exemption_type => "全免",
      :loan_amount => "260,400",
      :scholarship_division => "Scholarship Division",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/全免/)
    rendered.should match(/260,400/)
    rendered.should match(/Scholarship Division/)
    rendered.should match(/MyText/)
  end
end
