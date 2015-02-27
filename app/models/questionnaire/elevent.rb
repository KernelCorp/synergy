module Questionnaire
  class Elevent < Base

    embeds_one :question_about_factor
    embeds_one :question_about_color
    embeds_one :question_about_preference

    accepts_nested_attributes_for :question_about_factor, :question_about_color, :question_about_preference

    after_initialize do
      build_question_about_factor unless question_about_factor
      build_question_about_color unless question_about_color
      build_question_about_preference unless question_about_preference
    end

    ANSWERS_BY_COLOR_QUESTION = ['Красно-желтая гамма', 'Красный цвет', 'Желтый', 'Оранжевый', 'Фиолетовый',
                                 'Сине-зеленая гамма', 'Зеленый', 'Грязные, пачкающие тона',
                                 'Пастельные, белесые тона', 'Серый']
  end
end

