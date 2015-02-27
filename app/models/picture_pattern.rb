class PicturePattern
  include Mongoid::Document

  field :title
  field :description
  field :picture_number

  scope :for_question, -> (number) {where picture_number: number}
end
