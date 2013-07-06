require 'spec_helper'

describe "student_lists/edit" do
  before(:each) do
    @student_list = assign(:student_list, stub_model(StudentList,
      :classification => "MyString",
      :name => "MyString",
      :student_id => "MyString",
      :grade => 1,
      :program => "MyString",
      :student_account => "MyString",
      :campus_email => "MyString",
      :nationality => "MyString",
      :visa => "MyString",
      :study_period => "MyString",
      :PBL_1st => "MyString",
      :PBL_2nd => "MyString",
      :PBL_teacher => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit student_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_list_path(@student_list), "post" do
      assert_select "input#student_list_classification[name=?]", "student_list[classification]"
      assert_select "input#student_list_name[name=?]", "student_list[name]"
      assert_select "input#student_list_student_id[name=?]", "student_list[student_id]"
      assert_select "input#student_list_grade[name=?]", "student_list[grade]"
      assert_select "input#student_list_program[name=?]", "student_list[program]"
      assert_select "input#student_list_student_account[name=?]", "student_list[student_account]"
      assert_select "input#student_list_campus_email[name=?]", "student_list[campus_email]"
      assert_select "input#student_list_nationality[name=?]", "student_list[nationality]"
      assert_select "input#student_list_visa[name=?]", "student_list[visa]"
      assert_select "input#student_list_study_period[name=?]", "student_list[study_period]"
      assert_select "input#student_list_PBL_1st[name=?]", "student_list[PBL_1st]"
      assert_select "input#student_list_PBL_2nd[name=?]", "student_list[PBL_2nd]"
      assert_select "input#student_list_PBL_teacher[name=?]", "student_list[PBL_teacher]"
      assert_select "textarea#student_list_memo[name=?]", "student_list[memo]"
    end
  end
end
