class ArticlesController < ApplicationController
  include Mecab
  before_action :find_resources, only: %i(show edit_articles edit update destroy)

  def index
    @search = Article.search params[:q]
    @articles = @search.result.includes(:article_tag_mappings)
    @tags = Tag.all
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

  def edit_articles
    ##binding.pry
  end

  def edit
    @articles = Article.all.aggregate_of_month

  end

  def destroy
  end

  def update
    ##binding.pry

    if @article.update article_params
      ##binding.pry

      redirect_to edit_articles_path
    else
      # errros.add :nest.error.name, "messaage"
      flash.now[:danger] = '更新に失敗しました'
      render 'edit'
    end

  end

  private
  def find_resources
    @article = Article.find params[:id]
  end

  def article_params
    ##binding.pry
    params.require(:article).permit(:name, :body, :article_tag_mapping_id, article_tag_mappings_attributes: [:article_id, :tag_id, :_destroy])
  end
end
