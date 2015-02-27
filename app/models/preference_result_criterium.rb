class PreferenceResultCriterium
  include Mongoid::Document

  field :correct_answer

  belongs_to :preference_profession
  belongs_to :preference_result

end
