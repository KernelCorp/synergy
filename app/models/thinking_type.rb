class ThinkingType
  extend Enumerize
  include Mongoid::Document

  field :name
  field :kind
  field :description

  enumerize :kind, in: [:pd, :as, :sl, :no, :k]
  validates_uniqueness_of :kind
end