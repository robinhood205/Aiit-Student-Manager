require 'spec_helper'

describe "student_lists/index" do
  before(:each) do
    assign(:student_lists, [
      stub_model(StudentList,
        :aiit_member_id => 1,
        :name => "Name",
        :classification => "Classification",
        :grade => 2,
        :program => "Program",
        :student_account => "Student Account",
        :campus_email => "Campus Email",
        :nationality => "Nationality",
        :visa => "Visa",
        :study_period => "Study Period",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher",
        :guarantor_id => 3,
        :memo => "MyText"
      ),
      stub_model(StudentList,
        :aiit_member_id => 1,
        :name => "Name",
        :classification => "Classification",
        :grade => 2,
        :program => "Program",
        :student_account => "Student Account",
        :campus_email => "Campus Email",
        :nationality => "Nationality",
        :visa => "Visa",
        :study_period => "Study Period",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher",
        :guarantor_id => 3,
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of student_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    assert_select "tr>td", :text => "Student Account".to_s, :count => 2
    assert_select "tr>td", :text => "Campus Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "Visa".to_s, :count => 2
    assert_select "tr>td", :text => "Study Period".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 1st".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 2nd".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl Teacher".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
