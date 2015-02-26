require 'rails_helper'

RSpec.describe "questionnaires/new", :type => :view do
  before(:each) do
    assign(:questionnaire, Questionnaire.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :patronymic => "MyString",
      :school => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :class => "MyString",
      :school_district => "MyString"
    ))
  end

  it "renders new questionnaire form" do
    render

    assert_select "form[action=?][method=?]", questionnaires_path, "post" do

      assert_select "input#questionnaire_first_name[name=?]", "questionnaire[first_name]"

      assert_select "input#questionnaire_last_name[name=?]", "questionnaire[last_name]"

      assert_select "input#questionnaire_patronymic[name=?]", "questionnaire[patronymic]"

      assert_select "input#questionnaire_school[name=?]", "questionnaire[school]"

      assert_select "input#questionnaire_phone[name=?]", "questionnaire[phone]"

      assert_select "input#questionnaire_email[name=?]", "questionnaire[email]"

      assert_select "input#questionnaire_class[name=?]", "questionnaire[class]"

      assert_select "input#questionnaire_school_district[name=?]", "questionnaire[school_district]"
    end
  end
end
