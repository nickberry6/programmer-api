class PostsController < ApplicationController
  def index
    render json: 'hello from index', status: 200
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end

  def post_params
    params.require(:post).permit(:name)
  end
end
