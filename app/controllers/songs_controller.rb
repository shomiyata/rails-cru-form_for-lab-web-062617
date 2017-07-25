class SongsController < ApplicationController
  def create
    @song = Song.create(song_params)
    redirect_to @song
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
