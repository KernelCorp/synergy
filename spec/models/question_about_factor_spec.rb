require 'rails_helper'

RSpec.describe QuestionAboutFactor, :type => :model do
  describe 'create' do
    before(:each) do
      FactorChoiseProfession.create
    end
    let(:first_question) {QuestionAboutFactor.new}
    it 'creates a answer for first question' do
      expect(first_question.answers_by_factor_questions.size).to eq(1)
    end
  end
end
