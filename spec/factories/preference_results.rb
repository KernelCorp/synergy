FactoryGirl.define do
  factory :preference_result do
    title 'Title'
    description 'description'

    preference_result_criteriums {[build(:preference_result_criterium), build(:preference_result_criterium)]}
  end

end
