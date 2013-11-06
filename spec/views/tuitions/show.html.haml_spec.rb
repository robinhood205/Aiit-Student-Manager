<<<<<<< HEAD
# coding: utf-8
=======
>>>>>>> origin/chou
require 'spec_helper'

describe "tuitions/show" do
  before(:each) do
    @tuition = assign(:tuition, stub_model(Tuition,
<<<<<<< HEAD
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
>>>>>>> origin/chou
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
<<<<<<< HEAD
    rendered.should match(/false/)
    rendered.should match(/全免/)
    rendered.should match(/Scholarship Division/)
    rendered.should match(/260,400/)
=======
    rendered.should match(/1/)
    rendered.should match(/Transfer Request/)
    rendered.should match(/First Term Reduction/)
    rendered.should match(/Second Term Reduction/)
    rendered.should match(/Scholarship Division/)
    rendered.should match(/Loan Amount/)
>>>>>>> origin/chou
    rendered.should match(/MyText/)
  end
end
