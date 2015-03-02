module Questionnaire
  class Nine < Base


    field :question2

    belongs_to :profession_type
    embeds_one :question3
    embeds_one :question4

    accepts_nested_attributes_for :question4, :question3
    validates_presence_of :question2, :profession_type

    after_initialize do
      build_question3 unless question3
      build_question4 unless question4
    end
  end
end

