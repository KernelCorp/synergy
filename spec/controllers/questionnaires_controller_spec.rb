require 'rails_helper'

RSpec.describe QuestionnairesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Questionnaire. As you add validations to Questionnaire, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {'first_name'=>"Some String",
     'last_name'=>"Some String",
     'patronymic'=>"Some String",
     'school'=>"Some String",
     'phone'=>"Some String",
     'email'=>"Some String",
     'classroom'=>"Some String",
     'school_district'=>"Some String",
     'question3_attributes' => {
        'answers_attributes'=> {
            '0' => {'answer' => '1'},
            '1' => {'answer' => '1'},
            '2' => {'answer' => '2'},
            '3' => {'answer' => '2'},
            '4' => {'answer' => '3'},
        }
    }
  }
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QuestionnairesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all questionnaires as @questionnaires" do
      questionnaire = Questionnaire.create! valid_attributes
      get :index
      expect(assigns(:questionnaires)).to eq([questionnaire])
    end
  end

  describe "GET show" do
    it "assigns the requested questionnaire as @questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      get :show, {:id => questionnaire.to_param}
      expect(assigns(:questionnaire)).to eq(questionnaire)
    end
  end

  describe "GET new" do
    it "assigns a new questionnaire as @questionnaire" do
      get :new, {}
      expect(assigns(:questionnaire)).to be_a_new(Questionnaire)
    end
  end

  describe "GET edit" do
    it "assigns the requested questionnaire as @questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      get :edit, {:id => questionnaire.to_param}, valid_session
      expect(assigns(:questionnaire)).to eq(questionnaire)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Questionnaire" do
        expect {
          post :create, {:questionnaire => valid_attributes}
        }.to change(Questionnaire, :count).by(1)
      end

      it "assigns a newly created questionnaire as @questionnaire" do
        post :create, {:questionnaire => valid_attributes}
        expect(assigns(:questionnaire)).to be_a(Questionnaire)
        expect(assigns(:questionnaire)).to be_persisted
        expect(assigns(:questionnaire).question3.answers.exists?).to be_truthy
      end

      it "redirects to the created questionnaire" do
        post :create, {:questionnaire => valid_attributes}
        expect(response).to redirect_to(Questionnaire.last)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {"first_name"=>"Some String2",
         "last_name"=>"Some String2",
         "patronymic"=>"Some String2",
         "school"=>"Some String2",
         "phone"=>"Some String2",
         "email"=>"Some String2",
         "classroom"=>"Some String2",
         "school_district"=>"Some String2"}
      }

      it "updates the requested questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        put :update, {:id => questionnaire.to_param, :questionnaire => new_attributes}
        questionnaire.reload
        expect(assigns(:questionnaire).first_name).to eq(new_attributes["first_name"])
      end

      it "assigns the requested questionnaire as @questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        put :update, {:id => questionnaire.to_param, :questionnaire => valid_attributes}
        expect(assigns(:questionnaire)).to eq(questionnaire)
      end

      it "redirects to the questionnaire" do
        questionnaire = Questionnaire.create! valid_attributes
        put :update, {:id => questionnaire.to_param, :questionnaire => valid_attributes}
        expect(response).to redirect_to(questionnaire)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested questionnaire" do
      questionnaire = Questionnaire.create! valid_attributes
      expect {
        delete :destroy, {:id => questionnaire.to_param}
      }.to change(Questionnaire, :count).by(-1)
    end

    it "redirects to the questionnaires list" do
      questionnaire = Questionnaire.create! valid_attributes
      delete :destroy, {:id => questionnaire.to_param}
      expect(response).to redirect_to(questionnaires_url)
    end
  end

end
