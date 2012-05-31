class ArticleController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
  end
end
