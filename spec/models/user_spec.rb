require 'rails_helper'
require 'support/violate_check_constraint_matcher'

describe User do
  describe "email" do

    let(:user) {
      User.create!(email: "foo@example.com",
                   password: "qwertyuiop",
                   password_confirmation: "qwertyuiop")
    }
    it "creates a valid user" do
      expect(user).to be_instance_of(User)
    end

#    it "absolutely prevents invalid passwords" do
#      expect {
#        user.update_attribute(:password, "qwerty")
#      }.to raise_error(ActiveRecord::StatementInvalid,
#                       /password_must_be_greater_than_8/i)
#    end

#   it "absolutely prevents invalid email addresses" do
#      expect {
#        user.update_attribute(:email, "foo@bar.com")
#      }.to violate_check_constraint(:email_must_be_company_email)
#    end

  end
end
