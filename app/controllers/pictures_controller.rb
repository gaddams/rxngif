class PicturesController < ApplicationController
  def show
  	@picture = Picture.find_by(:id => params[:id])
  end

  def index
  	@list_of_all_pictures = Picture.all
  end

end
