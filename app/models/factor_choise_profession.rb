class FactorChoiseProfession
  include Mongoid::Document

  field :factor
  field :motivation
  field :arguments

  validates_uniqueness_of :factor

end
