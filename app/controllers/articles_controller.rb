class ArticlesController < ApplicationController
  before_action :find_resources, only: %i(show edit update destroy)

  def index
     @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    if @article.save
      redirect_to articles_path
    else
      flash.now[:danger] = " 記事の保存に失敗しました"
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private
  def find_resources
    @article = Article.find_by params[:id]
  end

  def article_params
    params.require(:article).permit(:name, :body, article_tag_mappings_attributes: [:article_id, :tag_id, :_destroy])
  end
end
