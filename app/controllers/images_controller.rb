class ImagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @blog_project = Project.find_by title: "Blog"
    @images = @blog_project.images
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to root_path
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(image_params)
    redirect_to image_path(@image)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:title, :date, :time, :aperature, :speed,
      :iso, :camera, :info, :photo, :project_id)
  end
end
