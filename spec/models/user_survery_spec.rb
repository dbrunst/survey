require 'rails_helper'

RSpec.describe UserSurvey, type: :model do
  context "saving a user survey" do
      it "saves when there is a question added" do
        u = UserSurvey.new(question: "Will it work?")
        expect(u.valid?).to be true
      end
      it "isn't valid when question is missing" do
        u = UserSurvey.new(question: "")
        expect(u.valid?).to be false
      end
  end
end
