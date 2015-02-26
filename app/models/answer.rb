class Answer
  include Mongoid::Document

  field :answer, type: Integer

  embedded_in :question3
end