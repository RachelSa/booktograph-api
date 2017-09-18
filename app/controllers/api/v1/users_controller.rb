module Api::V1
  class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
      @users = User.all
      render json: @users
    end

    def show
      render json: @user
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

    def find_user
      @user = User.find_by(id: params[:id])
    end

  end
end
