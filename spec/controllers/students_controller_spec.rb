require 'rails_helper'
require 'faker'
RSpec.describe StudentsController, type: :controller do
  describe "new" do 
    it "sets a new student object" do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      @user = FactoryBot.create(:user)
      @user.admin = true
      sign_in @user
      get :new
      expect(assigns(:student)).to be_a Student
    end 

  end

  describe "create" do
    context "when passed proper params" do
      it "creates a new student" do 
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        @user = FactoryBot.create(:user)
        @user.admin = true
        sign_in @user

        course = FactoryBot.create(:course)
        
        params = {student: {
        name: Faker::Name.name,
        course: course.name
        }}

        expect {
          post :create, params: params
        }.to change(Student, :count).from(0).to(1)
        expect(response).to redirect_to("/students/#{assigns(:student).id}")
      end
    end
  end
end
