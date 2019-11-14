# frozen_string_literal: true

class JerseyOrder < ApplicationRecord
  belongs_to :jersey
  belongs_to :order

  validates :quantity, :unit_price, presence: true
  validates :unit_price, numericality: { only_decimal: true }
end
