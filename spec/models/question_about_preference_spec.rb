require 'rails_helper'

RSpec.describe QuestionAboutPreference, :type => :model do
  describe 'create' do
    before(:each) do
      PreferenceProfession.create
      PreferenceProfession.create
    end
    let(:third_question) {QuestionAboutPreference.new}
    it 'creates a answer for third question' do
      expect(third_question.answers_by_preference_questions.size).to eq(2)
    end
  end

  describe '#max_sum' do
    let(:result) {create :preference_result}
    let(:question_about_preference) do
      cr = result.preference_result_criteriums.first
      build :question_about_preference,
            answers_by_preference_questions:
                [AnswersByPreferenceQuestion.new(answer: cr.correct_answer, preference_profession: cr.preference_profession),
                 AnswersByPreferenceQuestion.new(answer: cr.correct_answer, preference_profession: cr.preference_profession),
                 AnswersByPreferenceQuestion.new(answer: cr.correct_answer, preference_profession: cr.preference_profession),
                 AnswersByPreferenceQuestion.new(answer: cr.correct_answer, preference_profession: cr.preference_profession)
                ]
    end
    subject {question_about_preference.max_sum}

    it {is_expected.to eq({"Title"=>4})}
  end
end