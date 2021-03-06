class ArticlesController < ApplicationController
 http_basic_authenticate_with name: "siva", password: "pradeep", except: [:index, :show]
 
 before_action :authenticate_user!
def index
    @articles = Article.paginate(:page => params[:page], per_page: 3)

    if params[:search]
    @articles = Article.search(params[:search]).order("created_at DESC").all.paginate(:page => params[:page], per_page: 3)  
  else
    @articles = Article.all.order('created_at DESC').all.paginate(:page => params[:page], per_page: 3)  
  end
  
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)  
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text,:image,:price,:description)
    end
end
