FactoryGirl.define do
  factory :preference_result_criterium do
    correct_answer 'A'

    association :preference_profession
  end

end
