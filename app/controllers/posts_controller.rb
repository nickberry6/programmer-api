class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def show
    post = Post.find(post_params[:id])
    render json: post, status: 200
  end

  def create
    post = Post.create(post_params)
    render json: post, status: 201
  end

  def update
    post = Post.find(post_params[:id])
    post.update(post_params[:name])
    render json: post, status: 201
  end

  def destroy
    post = Post.find(post_params[:id])
    post.destroy
    render 'Successfully deleted post.', status: 200
  end

  private

  def post_params
    params.permit(:name, :id)
  end
end
