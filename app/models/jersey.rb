# frozen_string_literal: true

class Jersey < ApplicationRecord
  has_many :jersey_orders
  has_many :orders, through: :jersey_orders

  belongs_to :team

  has_one_attached :image

  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_decimal: true }
end
