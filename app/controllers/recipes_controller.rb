class RecipesController < ApplicationController
    def new
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        
        @recipe.save
        redirect_to @recipe
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def index
        @recipe = Recipe.all
    end
    
    def edit
        @recipe = Recipe.find(params[:id])
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end
    
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        
        redirect_to recipes_path
    end
end

private
    def recipe_params
        params.require(:recipe).permit(:name, :author, :step1, :step2, :step3)
    end