require 'spec_helper'

describe "student_lists/show" do
  before(:each) do
    @student_list = assign(:student_list, stub_model(StudentList,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Classification/)
    rendered.should match(/Gakusyu No/)
    rendered.should match(/Grade/)
    rendered.should match(/Program/)
    rendered.should match(/Student Account/)
    rendered.should match(/Email/)
    rendered.should match(/Nationality/)
    rendered.should match(/Visa/)
    rendered.should match(/Risyukikan/)
    rendered.should match(/Pbl 1st/)
    rendered.should match(/Pbl 2nd/)
    rendered.should match(/Pbl Teacher/)
  end
end
