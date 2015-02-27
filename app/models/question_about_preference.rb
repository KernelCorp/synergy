class QuestionAboutPreference
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'
  embeds_many :answers_by_preference_questions
  accepts_nested_attributes_for :answers_by_preference_questions

  after_initialize do
    if answers_by_preference_questions.empty?
      professions = PreferenceProfession.all
      professions.each do |profession|
        answers_by_preference_questions.build preference_profession: profession
      end
    end
  end

  def max_sum
    max_sum = {}
    PreferenceResult.all.each do |current_col|
      max_sum[current_col.title] = current_col.sum(self)
    end
    max_sum
  end
end
