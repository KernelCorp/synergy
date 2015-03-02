class AnswersByFactorQuestion
  include Mongoid::Document

  field :importance, type: Integer

  validates_presence_of :importance

  embedded_in :question_about_factor
  belongs_to :factor_choise_profession
end
