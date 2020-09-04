class VideosController < ApplicationController
  GOOGLE_API_KEY = "AIzaSyClHiQpeWv4nsso7mQQ61XWx9mooEZ4_kg"

  def index
    @videos = Video.all
  end

  def edit
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def refresh
    set_yt
    youtube_test
    redirect_to videos_path, notice: "更新が完了しました"
  end

  private
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
