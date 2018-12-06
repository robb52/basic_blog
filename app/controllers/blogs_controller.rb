class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index 
   @blogs = Blog.all.order("created_at DESC")
  end

  def show  
  end


  def new
    @blog = Blog.new
  end


  def edit  
  end

  
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: "You created a blog"
    else 
      render :new, alert: "Your Blog wasn't created"
    end
  end

  def update
    if @blog.update(blog_params)
       redirect_to @blog, notice: "Blog was updated"
    else
      render :edit, alert: "Blog was updated"
    end
  end

  def destroy
    @blog.destroy

    redirect_to blogs_path, notice: "Blog was deleted"
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
