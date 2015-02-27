class QuestionAboutFactor
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'
  embeds_many :answers_by_factor_questions
  accepts_nested_attributes_for :answers_by_factor_questions

  after_initialize do
    if answers_by_factor_questions.empty?
      approvals = FactorChoiseProfession.all
      approvals.each do |approval|
        answers_by_factor_questions.build factor_choise_profession_id: approval.id
      end
    end
  end
end
