class TasksController < ApplicationController
    def create
        @guide = Guide.find(params[:guide_id])
        @task = @guide.tasks.create(task_params)
        redirect_to edit_guide_path(@guide)
    end
    

    def edit
        @guide = Guide.find(params[:id])
    end
    
   

    def destroy
        @guide = Guide.find(params[:guide_id])
        @task = @guide.tasks.find(params[:id])
        @task.destroy
        redirect_to edit_guide_path(@guide)
    end
    

    private
        def task_params
            params.require(:task).permit(:body)
        end
        
end
