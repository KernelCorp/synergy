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
    while min_s(max_sum)[1] != max_s(max_sum)[1] do
      max_sum.except!(min_s(max_sum)[0])
    end
    max_sum
  end

  def letter_code
    sums = all_sums
    last_max = 0
    codes = ['','']
    4.times do
      if max_s(sums)[1] != last_max
        codes[0] += max_s(sums)[0][0]
        codes[1] += max_s(sums)[0][0]
      else
        codes[1].remove!(codes[1].last)
        codes[1] += max_s(sums)[0][0]
      end
      last_max = max_s(sums)[1]
      sums.except!(max_s(sums)[0])
    end
    if codes[0] == codes[1]
      codes.delete_at(1)
      codes[0].remove!(codes[0].last)
    end
    codes
  end

  def  get_description (title)
    PreferenceResult.where(title: title).first.description
  end

  private

  def max_s (sum)
    sum.max_by{|k,v| v}
  end

  def min_s (sum)
    sum.min_by{|k,v| v}
  end



end
