class Question3
  include Mongoid::Document

  embedded_in :questionnaire
  embeds_many :answers
  accepts_nested_attributes_for :answers

  after_initialize do
    40.times { answers.build } if answers.empty?
  end

  def type_of_thinking
    type = {:pd => 0, :as => 0, :sl => 0, :no => 0, :k => 0}
    types = []

    answers.each_with_index do |answer, index|
      case (index+1) % 5
        when 1
          type[:pd] += answer.answer
        when 2
          type[:as] += answer.answer
        when 3
          type[:sl] += answer.answer
        when 4
          type[:no] += answer.answer
        when 0
          type[:k] += answer.answer
      end
    end

    while min_type(type) != max_type(type) do
      type.except!(type.index(min_type(type)))
    end

    type.each_value do |t|
      types.push(ThinkingType.find_by(kind: type.index(t)))
      type.except!(type.index(t))
    end
    types
  end

  private
    def min_type (t)
      t.min_by{|k,v| v}[1]
    end

    def max_type (t)
      t.max_by{|k,v| v}[1]
    end

end