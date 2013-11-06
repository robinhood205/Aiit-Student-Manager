<<<<<<< HEAD
# coding: utf-8
=======
>>>>>>> origin/chou
require 'spec_helper'

describe "tuitions/index" do
  before(:each) do
    assign(:tuitions, [
      stub_model(Tuition,
<<<<<<< HEAD
        :transfer_request => false,
        :exemption_type => "全免",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "260,400",
        :memo => "MyText"
      ),
      stub_model(Tuition,
        :transfer_request => false,
        :exemption_type => "全免",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "260,400",
=======
        :student_list_id => 1,
        :transfer_request => "Transfer Request",
        :first_term_reduction => "First Term Reduction",
        :second_term_reduction => "Second Term Reduction",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
        :memo => "MyText"
      ),
      stub_model(Tuition,
        :student_list_id => 1,
        :transfer_request => "Transfer Request",
        :first_term_reduction => "First Term Reduction",
        :second_term_reduction => "Second Term Reduction",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
>>>>>>> origin/chou
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of tuitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
<<<<<<< HEAD
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "全免".to_s, :count => 2
    assert_select "tr>td", :text => "Scholarship Division".to_s, :count => 2
    assert_select "tr>td", :text => "260,400".to_s, :count => 2
=======
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Transfer Request".to_s, :count => 2
    assert_select "tr>td", :text => "First Term Reduction".to_s, :count => 2
    assert_select "tr>td", :text => "Second Term Reduction".to_s, :count => 2
    assert_select "tr>td", :text => "Scholarship Division".to_s, :count => 2
    assert_select "tr>td", :text => "Loan Amount".to_s, :count => 2
>>>>>>> origin/chou
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
