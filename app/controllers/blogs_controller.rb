class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all.order("created_at DESC").page(params[:page]).per_page(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
      format.js
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new()

   respond_to do |format|
    format.html # new.html.erb 
    format.json {render json: @blog }    
    format.js {render inline: "location.reload();" }
   end
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      redirect_to(:action => 'show', :id => @blog.id)
    else 
      render('edit')
    end
  end

  def delete
    @blog = Blog.find(params[:id])
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to(:action => 'index')
  end




  private
  def blog_params
    params.require(:blog).permit(:name, :title, :description, :image)
  end


end
