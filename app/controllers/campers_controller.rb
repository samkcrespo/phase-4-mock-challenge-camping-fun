class CampersController < ApplicationController

  def index
    # campers = Camper.all
    # render json: campers, status: :ok
    render json: Camper.all
  end

  def show 
    camper = find_camper
    render json: camper, serializer: CamperActivitiesSerializer
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end


  private 

  def find_camper
   camper = Camper.find(params[:id])
  end

  def camper_params
    params.permit(:name, :age)
  end

  def render_not_found_response
    render json: {error: "Camper not found" }, status: :not_found
  end
end
