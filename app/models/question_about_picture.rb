class QuestionAboutPicture
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'
  embeds_many :picture_pattern
  accepts_nested_attributes_for :picture_pattern

  belongs_to :image1, class_name: 'PicturePattern'
  belongs_to :image2, class_name: 'PicturePattern'
  belongs_to :image3, class_name: 'PicturePattern'
  belongs_to :image4, class_name: 'PicturePattern'
  belongs_to :image5, class_name: 'PicturePattern'
  belongs_to :image6, class_name: 'PicturePattern'

end
