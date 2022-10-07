class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record

  def index 
    render json: Power.all 
  end 

  def show 
    power = find_power 
    render json: power 
  end

  def update 
    power = find_power 
    power.update!(power_params) 
    render json: power, status: :accepted
  end


  private 
  def find_power 
    Power.find(params[:id]) 
  end

  def power_params 
    params.permit(:name, :description) 
  end

  def render_not_found 
    render json: {error: "Power not found"}, status: :not_found 
  end 

  def render_invalid_record(exception) 
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
  end

end
