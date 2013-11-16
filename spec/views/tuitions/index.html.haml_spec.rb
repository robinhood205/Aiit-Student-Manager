# coding: utf-8
require 'spec_helper'

describe "tuitions/index" do
  before(:each) do
    assign(:tuitions, [
      stub_model(Tuition,
        :student_list_id => 1,
        :transfer_request => false,
        :exemption_type => "全免",
        :loan_amount => "260400",
        :scholarship_division => "Scholarship Division",
        :memo => "MyText"
      ),
      stub_model(Tuition,
        :student_list_id => 1,
        :transfer_request => false,
        :exemption_type => "全免",
        :loan_amount => "260400",
        :scholarship_division => "Scholarship Division",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of tuitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "全免".to_s, :count => 2
    assert_select "tr>td", :text => "260400".to_s, :count => 2
    assert_select "tr>td", :text => "Scholarship Division".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
