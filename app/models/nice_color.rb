class NiceColor
  include Mongoid::Document

  field :color1
  field :color2
  field :color3

  embedded_in :question_about_color
end
