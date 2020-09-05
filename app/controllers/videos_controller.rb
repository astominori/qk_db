class VideosController < ApplicationController
  GOOGLE_API_KEY = "AIzaSyClHiQpeWv4nsso7mQQ61XWx9mooEZ4_kg"

  def index
    @videos = params[:member_id].present? ? Member.find(params[:member_id]).videos : Video.all
    @videos = Video.page(params[:page]).per(10)
  end

  def edit
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end

  def refresh
    set_yt
    youtube_test
    redirect_to videos_path, notice: "更新が完了しました"
  end

  def create
    Video.create(video_params)
    flash[:notice] = "作成しました"
    redirect_to videos_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.delete
    flash[:notice] = "削除しました"
    redirect_to videos_path
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    flash[:notice] = "更新しました"
    redirect_to videos_path
  end

  private
  def video_params
    params.require(:video).permit(:name,:url,:upload_at, member_ids: [])
  end

  def youtube_test
    video = Yt::Video.new id: 'UsThNLK0Ivo'
    p video.description
    binding.pry
  end

  def create_video_from_youtube
    channel = Yt::Channel.new id: 'UCQ_MqAw18jFTlBB-f8BP7dw'
    channel.videos.where(published_after: 2.months.ago.iso8601).first(30).each do |item|
      unless Video.find_by(name: item.title)
        Video.create(
          name: item.title,
          url: "https://www.youtube.com/watch?v=" + item.id,
          upload_at: item.published_at
        )
      end
    end
  end

  def set_yt
    Yt.configure do |config|
      config.api_key = GOOGLE_API_KEY
      config.log_level = :debug
    end
  end

end
