class CategoryController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @articles = Article.where(:category_id => params[:id]).paginate(:page => params[:page], :per_page => 30).order('created_at DESC')
  end
end
