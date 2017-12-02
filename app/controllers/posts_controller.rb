class PostsController < ApplicationController
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
end
