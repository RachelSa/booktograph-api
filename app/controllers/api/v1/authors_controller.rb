module Api::V1
  class AuthorsController < ApplicationController
    before_action :find_author, only: [:show, :update, :destroy]

    def index
      @authors = Author.all
      render json: @authors
    end

    def show
      render json: @author
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

    def find_author
      @author = Author.find_by(id: params[:id])
    end

  end
end
