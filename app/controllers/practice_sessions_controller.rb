class PracticeSessionsController < ApplicationController
    def index
        render json: PracticeSession.all
    end

    def show
        render json: PracticeSession.find(params[:id])
    end

    def create
        practice_session = PracticeSession.new(practice_session_params)

        if practice_session.save
          render json: practice_session, status: :created
        else
          render json: { errors: practice_session.errors.full_messages },
                 status: :unprocessable_entity
        end
      end


    private

    def practice_session_params
        params.require(:practice_session).permit(:name, :started_at, :duration_seconds)
    end
end
