class AuthorsController < ApplicationController
  def new
    @page_title = "Add New Author"
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author created"
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    flash[:notice] = "Author's details updated"
    redirect_to authors_path
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = "Author's details removed"
    redirect_to authors_path
  end




  private
    def author_params
      params.require(:author).permit(:first_name, :last_name)
    end
end
