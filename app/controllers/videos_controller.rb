class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def edit
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end
end
