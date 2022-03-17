class ResponsesController < ApplicationController

  def new
    @response = Response.new
    @user_survey = UserSurvey.find_by(id: params[:user_survey_id])
  end

  def create
    @response = Response.new(response_params)

    if @response.save
      redirect_to user_surveys_path
    else
      render :new
    end
  end

  private
    def response_params
      params.require(:response).permit(:response, :user_survey_id)
    end
end
