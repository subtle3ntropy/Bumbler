class PostController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]

    def index
      @posts= Post.all
    end

  def new
    @post= Post.new
  end

  def edit
  end

  def show
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Bumble deleted!"
  end

  def create
    @post.update(post.params)
    redirect_to @post, notice: "Thanks for the new Bumble!"
  end

  def update
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end

end
