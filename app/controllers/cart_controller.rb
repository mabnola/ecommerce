class CartController < ApplicationController
  def add_to_cart
  	line_item = LineItem.create(product_id: params[:product_id], quantity: params[:quantity])
  	line_item.line_item_total = line_item.quantity * line_item.product.price
  	line_item.save

  	redirect_to root_path
  end

  def view_order
  end

  def checkout
  end
end
