class DescriptionForQuestion1
  include Mongoid::Document

  field :title
  field :description

  validates_uniqueness_of :title
end
