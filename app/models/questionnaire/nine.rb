module Questionnaire
  class Nine < Base


    field :question2

    belongs_to :profession_type
    embeds_one :question3
    embeds_one :question4

    accepts_nested_attributes_for :question4, :question3

    after_initialize do
      build_question3 unless question3
      build_question4 unless question4
    end
  end
end

