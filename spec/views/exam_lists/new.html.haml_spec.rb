require 'spec_helper'

describe "exam_lists/new" do
  before(:each) do
    assign(:exam_list, stub_model(ExamList,
      :examno => "MyString",
      :reviewflg => false,
      :decisionreason => "MyString",
      :citizenoftokyo => false,
      :examination => "MyString",
      :examyear => "MyString",
      :basicknowledge => "MyString",
      :paper => "MyString",
      :presentation => "MyString",
      :interview => "MyString",
      :testscore => "MyString",
      :result => false,
      :memo => "MyString"
    ).as_new_record)
  end

  it "renders new exam_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exam_lists_path, "post" do
      assert_select "input#exam_list_examno[name=?]", "exam_list[examno]"
      assert_select "input#exam_list_reviewflg[name=?]", "exam_list[reviewflg]"
      assert_select "input#exam_list_decisionreason[name=?]", "exam_list[decisionreason]"
      assert_select "input#exam_list_citizenoftokyo[name=?]", "exam_list[citizenoftokyo]"
      assert_select "input#exam_list_examination[name=?]", "exam_list[examination]"
      assert_select "input#exam_list_examyear[name=?]", "exam_list[examyear]"
      assert_select "input#exam_list_basicknowledge[name=?]", "exam_list[basicknowledge]"
      assert_select "input#exam_list_paper[name=?]", "exam_list[paper]"
      assert_select "input#exam_list_presentation[name=?]", "exam_list[presentation]"
      assert_select "input#exam_list_interview[name=?]", "exam_list[interview]"
      assert_select "input#exam_list_testscore[name=?]", "exam_list[testscore]"
      assert_select "input#exam_list_result[name=?]", "exam_list[result]"
      assert_select "input#exam_list_memo[name=?]", "exam_list[memo]"
    end
  end
end
