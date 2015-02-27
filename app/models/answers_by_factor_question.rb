class AnswersByFactorQuestion
  include Mongoid::Document

  field :importance, type: Integer

  embedded_in :question_about_factor
  belongs_to :factor_choise_profession
end
