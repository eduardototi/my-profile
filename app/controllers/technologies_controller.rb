class TechnologiesController < ApplicationController
    skip_before_action :authenticate_user!
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
        @technology = Technology.new(technologie_params)
        if @technology.save
            redirect_to technologies_path
        else
            render :new
    end
    end

    def destroy
        @technology.destroy
        redirect_to technologies_path
    end

    def edit
    end

    def update
        if @technology.update(technology_params)
            redirect_to technology_path(@technology)
        else
            render :edit
        end
    end

    private

    def set_technologies
        @technologie = Technologie.find(params[:id])
    end

    def technology_params
        params.require(:technology).permit(:name, :description)
    end
end
