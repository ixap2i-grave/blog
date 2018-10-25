class TagsController < ApplicationController
  before_action :find_resources, only: %i(edit update destroy)

  def index
    @tags = Tag.all
    @tag = Tag.new
  end

  def new
  end

  def create
    @tag = Tag.new tag_params  
    if @tag.save
      redirect_to tags_path
    else
      p logger.debug @tag.errors.inspect
      flash.now[:danger] = " タグの保存に失敗しました"
      render 'index'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_resources
    @tag = Tag.find_by params[:id]
  end

  def tag_params
    params.require(:tag).permit(:category)
  end
end
