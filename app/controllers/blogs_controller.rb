class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@blog = Blog.new
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blog_path
  end


  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end

  def edit
  end
end