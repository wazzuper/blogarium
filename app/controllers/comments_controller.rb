class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @article = Article.find(params[:article_id])
    comment = @article.comments.new

    comment.author = current_user.username
    comment.body = comment_params[:body]
    comment.save

    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
