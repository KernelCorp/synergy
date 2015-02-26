json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :first_name, :last_name, :patronymic, :school, :phone, :email, :class, :school_district
  json.url questionnaire_url(questionnaire, format: :json)
end
