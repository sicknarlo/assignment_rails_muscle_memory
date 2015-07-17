class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:title], params[:body])
    @article.save
    redirect_to article_path(@article)
  end

  def show
    @article = Article.find(:id)
  end

end
