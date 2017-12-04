class TasksController < ApplicationController
    def create
        @guide = Guide.find(params[:guide_id])
        @task = @guide.tasks.create(task_params)
        redirect_to guide_path(@guide)
    end
    def destroy
        @task = Guide.find(params[:id])
        @task.destroy
        
        redirect_to guides_path
    end
    private
        def task_params
            params.require(:task).permit(:body)
        end
        
end
