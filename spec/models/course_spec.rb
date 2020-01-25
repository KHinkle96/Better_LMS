require 'rails_helper'

RSpec.describe Course, type: :model do

  describe "validations" do
    it "requires course to have a name" do
      course = FactoryBot.build(:course)
      expect(course.name).not_to be_nil
      expect(course.name).not_to be("")
    end
  end
end
