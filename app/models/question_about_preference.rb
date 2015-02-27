class QuestionAboutPreference
  include Mongoid::Document

  embedded_in :questionnaire, class_name: 'Questionnaire::Elevent'
  embeds_many :answers_by_preference_questions
  accepts_nested_attributes_for :answers_by_preference_questions

  after_initialize do
    if answers_by_preference_questions.empty?
      professions = PreferenceProfession.all
      professions.each do |profession|
        answers_by_preference_questions.build preference_profession: profession
      end
    end
  end

  def all_sums
    all_sums = {}
    PreferenceResult.all.each do |current_col|
      all_sums[current_col.title] = current_col.sum(self)
    end
    all_sums
  end

  def max_sum
    max_sum = all_sums
    while min_s(max_sum) != max_s(max_sum) do
      max_sum.except!(max_sum.index(min_s(max_sum)))
    end
    max_sum
  end

  def letter_code
    temp = all_sums
    code = ''
    3.times { temp.except!(temp.index(min_s(temp))) }
    until temp.empty?
      code += temp.index(max_s(temp))[0]
      temp.except!(temp.index(max_s(temp)))
    end
    code
  end

  def  get_description (title)
    PreferenceResult.where(title: title).first.description
  end

  private
  def min_s (t)
    t.min_by{|k,v| v}[1]
  end

  def max_s (t)
    t.max_by{|k,v| v}[1]
  end


end
