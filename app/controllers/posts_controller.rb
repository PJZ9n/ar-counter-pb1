class PostsController < ApplicationController
  def index
    @posts = Post.order(:id).page(params[:page]).per(50)

    @post ||= Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, status: :see_other
    else
      index
      render :index, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :published, :featured)
  end
end
