class SignupsController < ApplicationController

  def create
    signup = Signup.create!(signup_params)
    render json: signup.activity, status: :created
  end


  private

  def signup_params
    params.permit(:time, :camper_id, :activity_id)
  end

  def render_not_found_response
    render json: {error: "Signup not found" }, status: :not_found
  end
end
