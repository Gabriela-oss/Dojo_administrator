class CategoriesController < ApplicationController

  def index 
    @category = Category.find(params[:category_id]) if params[:category_id]  
    @levels = @category.levels
    render json:@levels
  end

end 