require 'spec_helper'

describe "student_lists/index" do
  before(:each) do
    assign(:student_lists, [
      stub_model(StudentList,
        :name => "Name",
        :classification => "Classification",
        :gakusyu_no => "Gakusyu No",
        :grade => "Grade",
        :program => "Program",
        :student_account => "Student Account",
        :Email => "Email",
        :nationality => "Nationality",
        :visa => "Visa",
        :risyukikan => "Risyukikan",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher"
      ),
      stub_model(StudentList,
        :name => "Name",
        :classification => "Classification",
        :gakusyu_no => "Gakusyu No",
        :grade => "Grade",
        :program => "Program",
        :student_account => "Student Account",
        :Email => "Email",
        :nationality => "Nationality",
        :visa => "Visa",
        :risyukikan => "Risyukikan",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher"
      )
    ])
  end

  it "renders a list of student_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => "Gakusyu No".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Program".to_s, :count => 2
    assert_select "tr>td", :text => "Student Account".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "Visa".to_s, :count => 2
    assert_select "tr>td", :text => "Risyukikan".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 1st".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 2nd".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl Teacher".to_s, :count => 2
  end
end
