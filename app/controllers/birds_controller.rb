class BirdsController < ApplicationController

  #GET /birds
    def index
        birds = Birds.all
        render json: birds
    end

    #GET /birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render {error: "Bird not found"}, status: :not_found
        end
    end


end
