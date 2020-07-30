class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_ownership!, only: [:destroy]
    

    def show
        @comment = Comment.all.order("created_at DESC")
    end
    
    def create
        new_comment = Comment.new(c_content: params[:c_content],
                                    model_id: params[:model_id],
                                    user_id: current_user.id,
                                    c_like: 0)
        new_comment.save
        redirect_to :back 
    end
    
    def destroy
        @comment.destroy
        redirect_to :back
    end
    
    #이 댓글이 진짜 그 사람 댓글이냐?
    private
        def check_ownership!
            @comment = Comment.find_by(id: params[:id])
            redirect_to root_path if @comment.user.id != current_user.id
            
        end
    
end
