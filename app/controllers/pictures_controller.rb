class PicturesController < ApplicationController
  def show
  	@picture = Picture.find_by(:id => params[:id])
  end

  def index
  	@list_of_all_pictures = Picture.all
  end

  def new
  end

  def create
  	@picture_new = Picture.new(:caption => params[:caption], :source => params[:source])
  	@picture_new.save
  	redirect_to("http://localhost:3000/all_pictures")
  end

  def destroy
  	@pciture_destroy = Picture.find(params[:id])
  	@pciture_destroy.destroy
  	redirect_to("http://localhost:3000/all_pictures")
  end

end
