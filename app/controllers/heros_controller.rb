class HerosController < ApplicationController

  def index 
    render json: Hero.all 
  end 

  def 

end
