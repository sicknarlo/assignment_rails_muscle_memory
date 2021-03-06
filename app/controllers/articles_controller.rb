class ArticlesController < ApplicationController
  
  def index
   @articles = Article.all
  end

  def new
    @article = Article.new 
  end

  def create
    @article = Article.new(:title => params[:title], :body => params[:body])

    if @article.save
      redirect_to article_path(@article)  
    else
      flash.now[:error] = "OOps..There was an error."
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.new(:title => params[:title], :body => params[:body])

    if @article.update
      redirect_to article_path(@article)  
    else
      flash.now[:error] = "OOps..There was an error."
    end
  end 
  
  def delete
    @article = Article.find(params[:id])
    if @article.destroy
      flash.now[:success] = "Article deleted"
      redirect_to root_path
    else
      flash.now[:error] = "Unable to delete"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

end
