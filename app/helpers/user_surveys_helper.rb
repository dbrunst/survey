
module UserSurveysHelper
  def getYesNoResponseRatio(user_survey_id)
    userSurvey = UserSurvey.find_by(id: user_survey_id)
    yes = 0.0
    no = 0.0
    if userSurvey != nil
      userSurvey.responses.each do |a|
        if a.response
          yes = yes + 1
        else
          no = no + 1
        end
      end
    end

    return 0 if yes == 0 && no == 0 
    return "#{(yes/(yes + no)).round(4) * 100}%"
  end
end
