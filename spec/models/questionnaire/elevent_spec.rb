require 'rails_helper'

RSpec.describe Questionnaire::Elevent, :type => :model do
  describe 'create' do
    let(:questionnaire) {Questionnaire::Elevent.create}
    it 'creates first question' do
      expect(questionnaire.question_about_factor.persisted?).to be_truthy
    end

    it 'creates third question' do
      expect(questionnaire.question_about_preference.persisted?).to be_truthy
    end
  end
end
