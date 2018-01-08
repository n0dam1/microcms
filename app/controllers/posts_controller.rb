class PostsController < ApplicationController
  before_action :set_post, only: %i[show]

  PER = 20

  def index
    @posts = Post.page(params[:page]).per(PER)
    respond_to do |format|
      format.html
      format.amp do
        lookup_context.formats = %i[amp html]
        render
      end
    end
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end
end
