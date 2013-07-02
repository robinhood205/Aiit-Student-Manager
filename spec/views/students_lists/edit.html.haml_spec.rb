require 'spec_helper'

describe "students_lists/edit" do
  before(:each) do
    @students_list = assign(:students_list, stub_model(StudentsList,
      :name => "MyString",
      :classification => "MyString",
      :gakusyu_no => "MyString",
      :grade => "MyString",
      :class => "MyString",
      :user_id => "MyString",
      :E_mail => "MyString",
      :nationality => "MyString",
      :visa => "MyString",
      :risyukikan => "MyString",
      :PBL_1st => "MyString",
      :PBL_2nd => "MyString",
      :PBL_teacher => "MyString"
    ))
  end

  it "renders the edit students_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_list_path(@students_list), "post" do
      assert_select "input#students_list_name[name=?]", "students_list[name]"
      assert_select "input#students_list_classification[name=?]", "students_list[classification]"
      assert_select "input#students_list_gakusyu_no[name=?]", "students_list[gakusyu_no]"
      assert_select "input#students_list_grade[name=?]", "students_list[grade]"
      assert_select "input#students_list_class[name=?]", "students_list[class]"
      assert_select "input#students_list_user_id[name=?]", "students_list[user_id]"
      assert_select "input#students_list_E_mail[name=?]", "students_list[E_mail]"
      assert_select "input#students_list_nationality[name=?]", "students_list[nationality]"
      assert_select "input#students_list_visa[name=?]", "students_list[visa]"
      assert_select "input#students_list_risyukikan[name=?]", "students_list[risyukikan]"
      assert_select "input#students_list_PBL_1st[name=?]", "students_list[PBL_1st]"
      assert_select "input#students_list_PBL_2nd[name=?]", "students_list[PBL_2nd]"
      assert_select "input#students_list_PBL_teacher[name=?]", "students_list[PBL_teacher]"
    end
  end
end
