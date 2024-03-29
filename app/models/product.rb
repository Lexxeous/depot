# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :orders, through: :line_items, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true

  validates :image_url,
    allow_blank: true,
    format: {
      with: /\.(gif|jpg|jpeg|png)\Z/i,
      message: "Must be a URL for GIF, JPEG, or PNG image.",
    }

  def self.latest
    order(:updated_at).last
  end

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line Items Present")
      throw :abort
    end
  end
end
