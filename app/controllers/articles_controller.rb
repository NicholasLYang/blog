class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
      @tag = params[:tag]
    else
      @articles = Article.tagged_with("main")
    end

  end

  def show
    @article = Article.find(params[:id])
  end

end
