module Api::V1
  class ReviewsController < ApplicationController
    before_action :find_reviews, only: [:show, :update, :destroy]

    def index
      @reviews = Review.all
      render json: @reviews
    end

    def show
      render json: @review
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

    def find_reviews
      @review = Review.find_by(id: params[:id])
    end
  end
end
