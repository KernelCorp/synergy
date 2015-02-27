require 'rails_helper'

RSpec.describe PreferenceResult, :type => :model do
  describe '#sum' do
    let(:result) {create :preference_result}
    let(:question_about_preference) do
      cr = result.preference_result_criteriums.first
      build :question_about_preference,
            answers_by_preference_questions: [AnswersByPreferenceQuestion.new(answer: cr.correct_answer,
                                                                              preference_profession: cr.preference_profession )]
    end
    subject {result.sum(question_about_preference)}

    it {is_expected.to eq(1)}
  end
end
