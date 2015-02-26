require 'rails_helper'

RSpec.describe Questionnaire, :type => :model do
  describe 'create' do
    let(:questionnaire) {Questionnaire.create}
    it 'creates question3' do
      expect(questionnaire.question3.persisted?).to be_truthy
    end
  end
end
