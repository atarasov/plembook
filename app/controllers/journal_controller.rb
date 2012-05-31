class JournalController < ApplicationController
  def index
    @categories = Category.all
    @articles = Article.paginate(:page => params[:page], :per_page => 30).order('created_at DESC')

  end
end
