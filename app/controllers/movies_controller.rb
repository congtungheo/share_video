class MoviesController < ApplicationController
  before_action :authenticate_user!

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build
    handle_params @movie, normalize_parameters

    if @movie.save
      return redirect_to root_path, notice: "Share success"
    end

    redirect_to new_movie_path, alert: "Share video Error"
  end

  private

  def normalize_parameters
    params.require(:movie).permit(:url)
  end

  def handle_params record, params
    video = VideoInfo.new(params[:url])

    record.assign_attributes({
      title: video&.title,
      description: video&.description,
      thumb_url: video&.thumbnail_medium,
      video_id: video&.video_id
    })
  end
end
