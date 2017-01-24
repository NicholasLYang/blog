class CommentsController < ApplicationController

  def create
    render plain: params[:article].inspect
    # @article = Article.find(params[:article_id])
    # @user = User.find(params[:comment][:user_id])
    # @comment = @article.comments.create(comment_params)
    # redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
