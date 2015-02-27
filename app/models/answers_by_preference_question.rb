class AnswersByPreferenceQuestion
  include Mongoid::Document

  field :answer

  embedded_in :question_about_preference
  belongs_to :preference_profession
end
