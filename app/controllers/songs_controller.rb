class SongsController < ApplicationController
    before_action :find_song, only: [:edit, :update, :show, :destroy]

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def edit
    end

    def show
    end

    def create
        @song = Song.new(song_params)
        if @song.valid?
            @song.save
        else 
            render :new
        end
    end

    def update 
        if @song.update(song_params)
            redirect_to song_path(@song)
        else
            render :edit
        end
    end

    def destroy
        @song.destroy
        redirect_to songs_path
    end


private
    def song_params
        params.require(:song).permit(:title, :release, :artist_name, :release_year)
    end

    def find_song
        @song = Song.find(params[:id])
    end

end
