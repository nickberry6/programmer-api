class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def show
  end

  def create
    post = Post.create(post_params)
    render json: post, status: 201
  end

  def update
  end

  def delete
  end

  def post_params
    params.require(:post).permit(:name)
  end
end
