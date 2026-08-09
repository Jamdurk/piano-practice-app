class PracticeSessionsController < ApplicationController
    def index
        render json: PracticeSession.all 
    end

    def show 
        render json: PracticeSession.find(params[:id])
    end

    def create 
        render json: {message: "Hello, create!"}
    end


    private 

    def practice_session_params
        params.require(:practice_session).permit(:name, :started_at, :duration_seconds)
    end

end
