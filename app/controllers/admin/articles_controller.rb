class Admin::ArticlesController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  private
  def article_params
    params.require(:article).permit(:title, :body, :author)
  end
end
