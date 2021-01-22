class ScoresController < ApplicationController
    before_action :authenticate_user!, only: [:index, :new, :create, :show]
    
    def from_user
        @user = User.find(params[:user_id])
    end

    def index
        @user = User.find(current_user.id)
    end
    def create
        status_fin = 0
        add_user = params[:score][:user_value]
        machine = rand(1..10).to_i
        if machine.even?
            if add_user.to_i>machine
                status_fin=1
            else
                status_fin=0
            end
        else
            if add_user.to_i<machine
                status_fin=1
            else
                status_fin=0
            end
        end
        # machine = params[:score][:machine_value]
        @score = current_user.scores.create(user_value: params[:score][:user_value],
            machine_value: machine,status: status_fin)
        redirect_to @score
    end
    def new
        @score = Score.new
    end
    def show
        @score = Score.find(params[:id])
    end
end
