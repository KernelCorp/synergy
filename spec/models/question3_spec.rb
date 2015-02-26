require 'rails_helper'

RSpec.describe Question3, :type => :model do
  describe 'create' do
    let(:questionnaire) {Questionnaire::Nine.create}
    it 'creates 40 answers' do
      expect(questionnaire.question3.answers.count).to eq(40)
    end
  end

  describe '#type_of_think' do
    before :each do
      create :thinking_type, kind: :pd, title: 'pd'
      create :thinking_type, kind: :as, title: 'as'
      create :thinking_type, kind: :sl, title: 'sl'
      create :thinking_type, kind: :no, title: 'no'
      create :thinking_type, kind: :k, title: 'k'
    end

    subject{question3.type_of_thinking}

    context 'one type of thinking (:pd)' do
      let(:question3) do
        value_array = [3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
        answers = []
        value_array.each do |value|
          answers << (build :answer, answer: value)
        end
        build :question3, answers: answers
      end
      it 'valid value type of think' do
        expect(subject.first.kind).to eq(:pd)
      end
    end
  end
end
