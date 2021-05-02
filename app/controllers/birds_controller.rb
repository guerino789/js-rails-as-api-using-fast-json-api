class BirdsController < ApplicationController

    def show
        bird = Bird.find(params[:id])
        render json: BirdSerializer.new(bird)
      end
    
      def index
        birds = Bird.all
        render json: BirdSerializer.new(birds)
      end
end
