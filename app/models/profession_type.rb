class ProfessionType
  include Mongoid::Document

  TYPES = ['Человек-Природа', 'Человек-Техника', 'Человек-Знак', 'Человек-Человек',
           'Человек-Художественный образ']
  field :name
  field :description
end
