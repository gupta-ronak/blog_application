class ArticleController < ApplicationController

  before_action :authenticate_account!


  def index
    @account = current_account
  end

  def new
    @article = Article.new
  end

  def create

      @article = Article.new(article_params)

      if @article.save
        redirect_to @article
      else

      end
  end

private
  def article_params
    params.require(:article).permit(:body,:title)
  end
end
