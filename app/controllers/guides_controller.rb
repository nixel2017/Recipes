class GuidesController < ApplicationController
    def new
        @guide = Guide.new
    end
    
    def show
        @guide = Guide.find(params[:id])
    end
    
    def index
        @guide = Guide.all
    end
    
    def create
        @guide = Guide.new(guide_params)
        
        
        if @guide.save
            
            redirect_to edit_guide_path(@guide)
        else
            render 'new'
        end
    end
    def edit
        @guide = Guide.find(params[:id])
    end
    
    def update
        @guide = Guide.find(params[:id])
        if @guide.update(guide_params)
            redirect_to guide_path(@guide)
        else
            render 'edit'
        end
    end
    
    def destroy
        @guide = Guide.find(params[:id])
        @guide.destroy
        
        redirect_to guides_path
    end
end


private
    def guide_params
        params.require(:guide).permit(:name, :author, :image, :difficulty, :ingredients)
    end