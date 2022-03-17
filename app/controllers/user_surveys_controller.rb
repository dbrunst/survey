class UserSurveysController < ApplicationController
  def index
    @user_surveys = UserSurvey.all
  end

  def show
    @user_survey = UserSurvey.find(params[:id])
  end

  def new
    @user_survey = UserSurvey.new
  end

  def create
    @user_survey = UserSurvey.new(user_survey_params)

    if @user_survey.save
      redirect_to user_surveys_path
    else
      render :new
    end
  end

  def edit
    @user_survey.find(params[:id])
  end

  def update
    @user_survey.find(params[:id])

    if @user_survey.update(user_survey_params)
      redirect_to user_surveys_path
    else
      render :edit
    end
  end

  private
    def user_survey_params
      params.require(:user_survey).permit(:question, responses:[:response])
    end
end
