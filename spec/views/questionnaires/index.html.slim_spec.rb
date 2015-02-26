require 'rails_helper'

RSpec.describe "questionnaires/index", :type => :view do
  before(:each) do
    assign(:questionnaires, [
      Questionnaire.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :patronymic => "Patronymic",
        :school => "School",
        :phone => "Phone",
        :email => "Email",
        :class => "Class",
        :school_district => "School District"
      ),
      Questionnaire.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :patronymic => "Patronymic",
        :school => "School",
        :phone => "Phone",
        :email => "Email",
        :class => "Class",
        :school_district => "School District"
      )
    ])
  end

  it "renders a list of questionnaires" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Patronymic".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Class".to_s, :count => 2
    assert_select "tr>td", :text => "School District".to_s, :count => 2
  end
end
