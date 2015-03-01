class QuestionAboutColor
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'

  belongs_to :nice_color1, class_name: 'ColorPattern'
  belongs_to :nice_color2, class_name: 'ColorPattern'
  belongs_to :nice_color3, class_name: 'ColorPattern'
  belongs_to :not_nice_color1, class_name: 'ColorPattern'
  belongs_to :not_nice_color2, class_name: 'ColorPattern'
  belongs_to :not_nice_color3, class_name: 'ColorPattern'
end
