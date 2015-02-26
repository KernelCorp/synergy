class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]


  def index
    @questionnaires = Questionnaire.all
  end

  def show
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
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
    redirect_to questionnaires_path
  end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    def questionnaire_params
      params.require(:questionnaire).permit(:first_name, :last_name, :patronymic, :school, :phone, :email, :classroom,
                                            :school_district, :question1, :question2,
                                            question3_attributes: [answers_attributes: [:id, :answer]],
                                            question4_attributes: [:answer1, :answer2, :answer3])
    end
end
