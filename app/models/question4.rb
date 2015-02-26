class Question4
  include Mongoid::Document

  field :answer1, type: Integer
  field :answer2, type: Integer
  field :answer3, type: Integer

  embedded_in :questionnaire, class_name: 'Questionnaire::Nine'

  def subtype(answer)
    result = SubtypeCode.find_by(image_code: answer).thinking_subtype
  end

end