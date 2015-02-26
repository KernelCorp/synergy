require 'rails_helper'

RSpec.describe "questionnaires/show", :type => :view do
  before(:each) do
    @questionnaire = assign(:questionnaire, Questionnaire.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :patronymic => "Patronymic",
      :school => "School",
      :phone => "Phone",
      :email => "Email",
      :class => "Class",
      :school_district => "School District"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Patronymic/)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Class/)
    expect(rendered).to match(/School District/)
  end
end
