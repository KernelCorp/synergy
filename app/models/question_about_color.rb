class QuestionAboutColor
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'
  embeds_one :nice_color
  embeds_one :not_nice_color
  accepts_nested_attributes_for :nice_color, :not_nice_color

  after_initialize do
    build_nice_color if nice_color.nil?
    build_not_nice_color if not_nice_color.nil?
  end
end
