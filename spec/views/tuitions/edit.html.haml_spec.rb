require 'spec_helper'

describe "tuitions/edit" do
  before(:each) do
    @tuition = assign(:tuition, stub_model(Tuition,
      :student_list_id => 1,
      :transfer_request => false,
      :exemption_type => "MyString",
      :scholarship_division => "MyString",
      :loan_amount => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit tuition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tuition_path(@tuition), "post" do
      assert_select "input#tuition_student_list_id[name=?]", "tuition[student_list_id]"
      assert_select "input#tuition_transfer_request[name=?]", "tuition[transfer_request]"
      assert_select "input#tuition_exemption_type[name=?]", "tuition[exemption_type]"
      assert_select "input#tuition_scholarship_division[name=?]", "tuition[scholarship_division]"
      assert_select "input#tuition_loan_amount[name=?]", "tuition[loan_amount]"
      assert_select "textarea#tuition_memo[name=?]", "tuition[memo]"
    end
  end
end
