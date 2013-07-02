require 'spec_helper'

describe "students_lists/show" do
  before(:each) do
    @students_list = assign(:students_list, stub_model(StudentsList,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Classification/)
    rendered.should match(/Gakusyu No/)
    rendered.should match(/Grade/)
    rendered.should match(/Class/)
    rendered.should match(/User/)
    rendered.should match(/E Mail/)
    rendered.should match(/Nationality/)
    rendered.should match(/Visa/)
    rendered.should match(/Risyukikan/)
    rendered.should match(/Pbl 1st/)
    rendered.should match(/Pbl 2nd/)
    rendered.should match(/Pbl Teacher/)
  end
end
