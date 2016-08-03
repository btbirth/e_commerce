class StoreFrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  end

  def items_brand
  end
end
