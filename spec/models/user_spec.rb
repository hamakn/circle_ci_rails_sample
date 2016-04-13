require 'rails_helper'

RSpec.describe User, type: :model do
  let(:name) { "" }
  let(:email) { "foo@test.test" }
  let(:user_params) { { name: name, email: email } }
  let(:user) { User.new user_params }

  describe "#name" do
    context "name.length < 2" do
      let(:name) { "a" }
      it "should be invalid" do
        user.valid?
        expect(user.errors[:name]).to be_present
      end
    end

    context "name.length >= 2" do
      let(:name) { "aa" }
      it "should be invalid" do
        user.valid?
        expect(user.errors[:name]).to be_empty
      end
    end
  end
end
