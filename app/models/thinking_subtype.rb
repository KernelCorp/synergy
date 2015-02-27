class ThinkingSubtype
  include Mongoid::Document

  field :title
  field :status
  field :description
  field :suitable_job

  has_many :subtype_codes
  validates_uniqueness_of :title
end
