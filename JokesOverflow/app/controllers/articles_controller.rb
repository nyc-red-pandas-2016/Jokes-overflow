class ArticlesController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def show
    @article = Article.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    @category = Category.find(params[:article][:category_id])
    if @article.save
      redirect_to @category
    else
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id, :category_id)
  end
end
