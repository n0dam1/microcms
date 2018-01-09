class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  def index
    @posts = Post.page(params[:page])
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end
end
