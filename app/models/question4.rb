class Question4
  include Mongoid::Document

  field :answer1, type: Integer
  field :answer2, type: Integer
  field :answer3, type: Integer

  embedded_in :questionnaire, class_name: 'Questionnaire::Nine'

  def leading_subtype
    SubtypeCode.where(image_code: answer1).first
  end

  def actual_subtype
    SubtypeCode.where(image_code: answer2).first
  end

  def potential_subtype
    SubtypeCode.where(image_code: answer3).first
  end
end