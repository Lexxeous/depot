# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item # returns either an existing LineItem or nil (NULL)
  end

  def total_price
    line_items.to_a.sum(&:total_price) # converts line_items to an array and sums the prices
  end
end
