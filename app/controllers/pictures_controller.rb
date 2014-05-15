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
  	@picture_destroy = Picture.find(params[:id])
  	@picture_destroy.destroy
  	redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
  	@picture_to_edit = Picture.find(params[:id])
  end

  def update
  	@picture_to_update = Picture.find(params[:id])
  	@picture_to_update.caption = params[:caption]
  	@picture_to_update.source = params[:source]
  	@picture_to_update.save
  	redirect_to("http://localhost:3000/all_pictures")
  end

end
