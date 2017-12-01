class StepsController < ApplicationController
    def create
        @recipe = CreateRecipe.find(params[:create_recipe_id])
        @step = @recipe.steps.create(step_params)
        redirect_to recipe_path(@recipe)
    end
    
    private 
        def step_params
            params.require(:step).permit(:body)
        end
end
