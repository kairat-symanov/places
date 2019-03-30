class CategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all 
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category
    else 
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to root_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end 

  def find_category
    @category = Category.find(params[:id])
  end
end
