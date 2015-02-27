class ThinkingSubtype
  include Mongoid::Document

  field :name
  field :status
  field :description
  field :suitable_job

  has_many :subtype_codes
  validates_uniqueness_of :name
end
