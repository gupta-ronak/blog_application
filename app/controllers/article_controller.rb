class ArticleController < ApplicationController

  before_action :authenticate_account!


  def show
      @article = current_account.user.articles.find params[:id]
  end


  def index
    @account = current_account
  end

  def new
    @article = Article.new
  end

  def create
      logger.debug article_params
      @article = current_account.user.articles.new(article_params)
      logger.debug @article.title
      if @article.save
        redirect_to root_path
      else
        render :new , status: :unprocessable_entity
      end
  end

private
  def article_params
    params.require(:article).permit(:body,:title)
  end
end
