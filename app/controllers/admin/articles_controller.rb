class Admin::ArticlesController < ApplicationController
#  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.order(:created_at)
  end

  def create
    @article = current_user.articles.new(article_params)
    @article.tag_list.add("main") if @article.tag_list.empty?
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = current_user.articles.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def new
    @article = current_user.articles.build
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :tag_list)
  end

end
