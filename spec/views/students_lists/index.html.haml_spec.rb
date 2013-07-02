require 'spec_helper'

describe "students_lists/index" do
  before(:each) do
    assign(:students_lists, [
      stub_model(StudentsList,
        :name => "Name",
        :classification => "Classification",
        :gakusyu_no => "Gakusyu No",
        :grade => "Grade",
        :class => "Class",
        :user_id => "User",
        :E_mail => "E Mail",
        :nationality => "Nationality",
        :visa => "Visa",
        :risyukikan => "Risyukikan",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher"
      ),
      stub_model(StudentsList,
        :name => "Name",
        :classification => "Classification",
        :gakusyu_no => "Gakusyu No",
        :grade => "Grade",
        :class => "Class",
        :user_id => "User",
        :E_mail => "E Mail",
        :nationality => "Nationality",
        :visa => "Visa",
        :risyukikan => "Risyukikan",
        :PBL_1st => "Pbl 1st",
        :PBL_2nd => "Pbl 2nd",
        :PBL_teacher => "Pbl Teacher"
      )
    ])
  end

  it "renders a list of students_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => "Gakusyu No".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Class".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "E Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    assert_select "tr>td", :text => "Visa".to_s, :count => 2
    assert_select "tr>td", :text => "Risyukikan".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 1st".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl 2nd".to_s, :count => 2
    assert_select "tr>td", :text => "Pbl Teacher".to_s, :count => 2
  end
end
