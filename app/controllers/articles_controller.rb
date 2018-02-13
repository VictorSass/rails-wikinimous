class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index       # GET /articles
    @articles = Article.all
  end

  def show    # GET /articles/:id
  end

  def new         # GET /articles/new
    @article = Article.new
  end

  def create     # POST /articles
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit       # GET /articles/:id/edit
  end

  def update      # PATCH /articles/:i
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy     # DELETE /articles/:id
    @article.destroy
    redirect_to articles_path
  end

private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :picture)
  end
end

