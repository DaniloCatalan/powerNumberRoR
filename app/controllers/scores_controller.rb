class ScoresController < ApplicationController
    before_action :authenticate_user!, only: [:index, :new, :create, :show]
    
    def from_user
        @user = User.find(params[:user_id])
    end

    def index
        @score = Score.all
    end
    def create
        @score = current_user.scores.create(user_value: params[:score][:user_value],machine_value: params[:score][:machine_value])
        redirect_to @score
    end
    def new
        @score = Score.new
    end
    def show
        @score = Score.find(params[:id])
    end
end
