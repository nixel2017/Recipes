class RecipesController < ApplicationController
    def new
        @recipe = CreateRecipe.new
    end
    
    def create
        @recipe = CreateRecipe.new(recipe_params)
        
        if @recipe.save
        redirect_to '/recipes'
        else 
        render 'new'
        end
    
    end
    
    def show
        @recipe = CreateRecipe.find(params[:id])
    end
    
    def index
        @recipe = CreateRecipe.all
    end
    
    def edit
        @recipe = CreateRecipe.find(params[:id])
    end
    
    def update
        @recipe = CreateRecipe.find(params[:id])
        
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end
    
    def destroy
        @recipe = CreateRecipe.find(params[:id])
        @recipe.destroy
        
        redirect_to recipes_path
    end
end

private
    def recipe_params
        params.require(:recipe).permit(:name, :author, :step1, :step2, :step3)
    end