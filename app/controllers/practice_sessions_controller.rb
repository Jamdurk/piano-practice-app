class PracticeSessionsController < ApplicationController
    def index
        render json: PracticeSession.all 
    end

    def show 
        render json: { message: "Hello, show!" }
    end

    def create 
        render json: {message: "Hello, create!"}
    end

end
