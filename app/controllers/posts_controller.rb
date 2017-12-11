class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.amp do
        lookup_context.formats = %i[amp html]
        render
      end
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to(@post, notice: '作成完了')
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to(@post, notice: '更新完了')
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: '削除完了'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
