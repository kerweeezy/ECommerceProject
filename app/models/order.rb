# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :jersey_orders
  has_many :jerseys, through: :jersey_orders

  validates :subtotal, :total, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }
end
