class PreferenceResult
  include Mongoid::Document

  field :title
  field :description

  has_many :preference_result_criteriums
  accepts_nested_attributes_for :preference_result_criteriums

  validates_uniqueness_of :title

  def sum (current_question)
    sum = 0
    current_question.answers_by_preference_questions.each do |current_answer|
      criteriums = preference_result_criteriums.where(preference_profession_id: current_answer.preference_profession_id,
                                                     correct_answer: current_answer.answer)
     sum += 1 if criteriums.count > 0
    end
    sum
  end
end
