class PicturePattern
  include Mongoid::Document

  field :title
  field :description
  field :picture_number, type: Integer

  scope :for_question, -> (number) {where picture_number: number}
end
