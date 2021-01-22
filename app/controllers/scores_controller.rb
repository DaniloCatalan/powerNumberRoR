class ScoresController < ApplicationController
    def index
        @score = Score.all
    end
    def create
        @score = Score.create(user_value: params[:score][:user_value],machine_value: params[:score][:machine_value])
        redirect_to @score
    end
    def new
        @score = Score.new
    end
    def show
        @score = Score.find(params[:id])
    end
end
