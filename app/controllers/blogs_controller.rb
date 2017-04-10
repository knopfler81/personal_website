class BlogsController < ApplicationController


  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
     @blog = Blog.new
  end

  def create
   @blog = Blog.new(blog_params)
     if @blog.save
       redirect_to blogs_path, notice: 'Article was successfully created.'
     else
       render action: 'new'
     end
  end

   def edit
     @blog = Blog.find(params[:id])
   end

   def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice: "Article was successfully deleted"
   end

   def update
    @blog = Blog.find(params[:id])
      if @blog.update(params[:blog].permit(:title, :decription))
        redirect_to blogs_path, notice: 'Article was successfully updated.'
      else
    render 'edit'
      end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
