class CommentsController < ApplicationController
    def create
        @guide = Guide.find(params[:guide_id])
        @comment = @guide.comments.create(comment_params)
        redirect_to guide_path(@guide)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end

