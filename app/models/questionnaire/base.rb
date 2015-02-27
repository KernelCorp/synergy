module Questionnaire
  class Base
    include Mongoid::Document
    include Mongoid::Timestamps

    field :first_name
    field :last_name
    field :patronymic
    field :school
    field :phone
    field :email
    field :classroom
    field :school_district
  end
end