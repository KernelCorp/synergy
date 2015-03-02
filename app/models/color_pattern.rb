class ColorPattern
  include Mongoid::Document

  field :color
  field :nice
  field :not_nice

  scope :all_colors, -> {all}
end
