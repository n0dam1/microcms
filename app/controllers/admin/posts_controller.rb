class Admin::PostsController < Admin::ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authorize_post, only: %i[index new create]
  after_action :verify_authorized

  def index
    @posts = Post.index_all.page(params[:page])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to([:admin, @post], success: '作成完了')
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
      redirect_to([:admin, @post], success: '更新完了')
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path, success: '削除完了'
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id, :tag_list)
  end

  def authorize_post
    authorize Post
  end
end
