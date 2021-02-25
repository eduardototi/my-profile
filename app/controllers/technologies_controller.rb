class TechnologiesController < ApplicationController
    
    before_action :set_technologies, only: [:show, :edit, :destroy, :update]
    
    def index
        @technologies = Technology.all
    end

    def show
    end

    def new
        @technology = Technology.new
    end

    def create
        @technology = Technology.new(technology_params)
        if @technology.save
            redirect_to root_path
        else
            render :new
    end
    end

    def destroy
        @technology.destroy
        redirect_to root_path
    end

    def edit
    end

    def update
        if @technology.update(technology_params)
            redirect_to root_path
        else
            render :edit
        end
    end

    private

    def set_technologies
        @technologie = Technologie.find(params[:id])
    end

    def technology_params
        params.require(:technology).permit(:name, :description, :photo)
    end
end
