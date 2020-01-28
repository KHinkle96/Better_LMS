require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "requires the email" do
      should validate_presence_of :email
    end
    it "requires uniqueness in email" do 
      should validate_uniqueness_of(:email).case_insensitive
    end
  end

#  describe "#secret_number" do
#    it "returns the number 42" do
#      user = create(:user, role: :standard)
#      expect(user.secret_number).to eq 42
#    end
#    it "returns the number 14 for admin users" do
#      user = create(:user, role: :admin)
#      expect(user.secret_number).to eq 14
#    end
#
#  end
end
