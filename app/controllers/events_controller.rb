class EventsController < ApplicationController

def index
  @posts = Post.all
  @post = Post.new
end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)

  if @post.save
    redirect_to @post
  else
    render :new
  end
end

def about
end

private

def post_params
 params.require(@post).permit(:title,:content,:user_id)
end

end

