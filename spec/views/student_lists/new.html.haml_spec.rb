require 'spec_helper'

describe "student_lists/new" do
  before(:each) do
    assign(:student_list, stub_model(StudentList,
      :name => "MyString",
      :classification => "MyString",
      :gakusyu_no => "MyString",
      :grade => "MyString",
      :program => "MyString",
      :student_account => "MyString",
      :Email => "MyString",
      :nationality => "MyString",
      :visa => "MyString",
      :risyukikan => "MyString",
      :PBL_1st => "MyString",
      :PBL_2nd => "MyString",
      :PBL_teacher => "MyString"
    ).as_new_record)
  end

  it "renders new student_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_lists_path, "post" do
      assert_select "input#student_list_name[name=?]", "student_list[name]"
      assert_select "input#student_list_classification[name=?]", "student_list[classification]"
      assert_select "input#student_list_gakusyu_no[name=?]", "student_list[gakusyu_no]"
      assert_select "input#student_list_grade[name=?]", "student_list[grade]"
      assert_select "input#student_list_program[name=?]", "student_list[program]"
      assert_select "input#student_list_student_account[name=?]", "student_list[student_account]"
      assert_select "input#student_list_Email[name=?]", "student_list[Email]"
      assert_select "input#student_list_nationality[name=?]", "student_list[nationality]"
      assert_select "input#student_list_visa[name=?]", "student_list[visa]"
      assert_select "input#student_list_risyukikan[name=?]", "student_list[risyukikan]"
      assert_select "input#student_list_PBL_1st[name=?]", "student_list[PBL_1st]"
      assert_select "input#student_list_PBL_2nd[name=?]", "student_list[PBL_2nd]"
      assert_select "input#student_list_PBL_teacher[name=?]", "student_list[PBL_teacher]"
    end
  end
end
