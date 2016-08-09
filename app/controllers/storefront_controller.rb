class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@category = Category.find(params[:cat_id])
    @products = Product.where(category: params[:cat_id])
  end

  def items_by_brand
  end
end
