class SearchController < ApplicationController

  # GET /search
  def index
    @pictures = Picture.where("name Like '%#{search_params[:q]}%'")
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def search_params
    params.permit(:q)
  end
end
