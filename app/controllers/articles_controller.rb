class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit 
   @article = Article.find(params[:id])
  end

  def update 
   #raise params.inspect
   # check if the params are what I thought before
      # implementing update action

   # Now to update   

   # Query database and store in instance variable
   @article = Article.find(params[:id])

   # Update Values
   @article.update(title: params[:article][:title],
     description: params[:article][:description])

   # Redirect to show page
    redirect_to article_path(@article)
   
  end
end
