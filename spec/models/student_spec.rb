require 'rails_helper'

RSpec.describe Student, type: :model do

  describe "validations" do
    it "requires student to have a name" do
      student = FactoryBot.build(:student)
      expect(student.name).not_to be_nil
      expect(student.name).not_to be("")
    end
  end
end
