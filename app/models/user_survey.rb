class UserSurvey < ActiveRecord::Base
  has_many :responses

  validates :question, presence: true
end
