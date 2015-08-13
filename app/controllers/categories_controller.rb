class CategoriesController < ApplicationController
  def new
    @page_title = "Add New Category"
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    # if @category.save
    #   redirect_to categories_path
    # else
    #   redirect_to new_category_path
    # end
    if @category.save
     flash[:notice] = "Category Created"
     redirect_to categories_path
   else
      render 'new'
   end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
