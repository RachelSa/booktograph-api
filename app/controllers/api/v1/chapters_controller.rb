module Api::V1
  class ChaptersController < ApplicationController
    before_action :find_chapter, only: [:show, :update, :destroy]

    def index
      @chapters = Chapter.all
      render json: @chapters
    end

    def show
      render json: @chapter
    end

    def create
      # add create
    end

    def update
      # add update
    end

    def destroy
      #add destroy
    end

    private

    def find_chapter
      @chapter = Chapter.find_by(id: params[:id])
    end

  end
end
