class QuestionnaireNinesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @questionnaires = Questionnaire::Nine.all
  end

  def show
    respond_to do |format|
      format.html
      format.pdf {
        render pdf: "questionnaire-#{ @questionnaire.id }", :margin => {:top                => 10,
                                                                        :bottom             => 0,
                                                                        :left               => 10,
                                                                        :right              => 2}, show_as_html: params[:debug].present?
      }
    end
  end

  def new
    @questionnaire = Questionnaire::Nine.new
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire::Nine.new(questionnaire_params)
    if @questionnaire.save
      redirect_to @questionnaire
    else
      render 'new'
    end
  end

  def update
    if @questionnaire.update(questionnaire_params)
      redirect_to @questionnaire
    else
      render 'edit'
    end

  end

  def destroy
    @questionnaire.destroy
    redirect_to questionnaire_nines_path
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire::Nine.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire_nine).permit(:first_name, :last_name, :patronymic, :school, :phone, :email, :classroom,
                                            :school_district, :profession_type_id, :question2,
                                            question3_attributes: [answers_attributes: [:id, :answer]],
                                            question4_attributes: [:answer1, :answer2, :answer3])
    end
end
