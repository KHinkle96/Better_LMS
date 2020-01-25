require 'rails_helper'
require 'faker'
RSpec.describe StudentsController, type: :controller do
  describe "new" do 
    it "sets a new student object" do 
      get :new
      expect(assigns(:student)).to be_a Student
    end 

  end

  describe "create" do
    context "when passed proper params" do
      it "creates a new student" do 
        params = {student: {
        name: Faker::Name.name
        }}
        expect {
          post :create, params: params
        }.to change(Student, :count).from(0).to(1)
        expect(response).to redirect_to(root_path)
      end
    end
    context "when passed bad params" do 
      it "renders the new action with no student created" do
        params = {student: {hackerman: true}}
        post :create, params: params
        expect(Student.count).to eq 0
        expect(response).to render_template(:new)
      end
    end
    context "when passed bad params" do
      it "renders the new action with no student created" do
        params = {hackerman: true}
        expect {
          post :create, params: params
        }.to raise_error(ActionController::ParameterMissing)
      end
    end
  end
end
