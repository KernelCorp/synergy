class QuestionnaireEleventsController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @questionnaires = Questionnaire::Elevent.all
  end

  def show
  end

  def new
    @questionnaire = Questionnaire::Elevent.new
  end

  def edit
  end

  def create
    @questionnaire = Questionnaire::Elevent.new(questionnaire_params)
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
    redirect_to questionnaire_elevents_path
  end

  private
  def set_questionnaire
    @questionnaire = Questionnaire::Elevent.find(params[:id])
  end

  def questionnaire_params
    params.require(:questionnaire_elevent).permit(:first_name, :last_name, :patronymic, :school, :phone, :email, :classroom,
                    :school_district,
                    question_about_factor_attributes: [answers_by_factor_questions_attributes:[:id, :importance, :factor_choise_profession_id]],
                    question_about_color_attributes: [:id, :nice_color1_id, :nice_color2_id, :nice_color3_id, :not_nice_color1_id, :not_nice_color2_id, :not_nice_color3_id],
                    question_about_preference_attributes: [answers_by_preference_questions_attributes: [:id, :answer, :preference_profession_id]],
                    question_about_picture_attributes: [:id, :image1_id, :image2_id, :image3_id, :image4_id, :image5_id, :image6_id ])
  end
end
