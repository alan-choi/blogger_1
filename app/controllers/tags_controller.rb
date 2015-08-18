class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete

    flash.notice = "Tag #{@tag.name} deleted!"

    redirect_to tags_path
  end
end
