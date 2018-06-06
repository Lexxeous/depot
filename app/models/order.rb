class Order < ApplicationRecord

	has_many :line_items, dependent: :destroy

	enum pay_type: #references to the enumeration are always plural ; this is not the case with normal hashes
	{
		"Check"				=> 0,
		"Credit Card"		=> 1,
		"Purchase Order"	=> 2,
		"Debit Card"		=> 3
	}

	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: pay_types.keys

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item #allows the addition of items into a collection ; same as the .push method
		end
	end
end
