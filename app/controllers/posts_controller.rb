class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.find(params[:user_id])
    @post = Post.create(text: params[:content])
    
    render 'posts/create.jbuilder'
  end
  
  def index
    posts = Post.all
    render json: posts
  end

end
