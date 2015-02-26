class SubtypeCode
  include Mongoid::Document

  field :image_code, type: Integer
  field :description

  belongs_to :thinking_subtype

  validates_inclusion_of :image_code, in: [811, 721, 712, 631, 622, 613, 541, 532, 523, 514, 433, 343, 334, 181, 271, 172, 361, 262,
                        163, 451, 352, 253, 154, 442, 424, 244, 415, 325, 235, 145, 118, 127, 217, 136, 226, 316]
  validates_uniqueness_of :image_code
end
