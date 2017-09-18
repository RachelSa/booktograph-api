module Api::V1
  class BooksController < ApplicationController
    before_action :find_book, only: [:show, :update, :destroy]

    def index
      @books = Book.all
      render json: @books
    end

    def show
      render json: @book
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

    def find_book
      @book = Book.find_by(id: params[:id])
    end

  end
end
