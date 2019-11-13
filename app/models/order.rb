# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :jersey_orders
  has_many :jerseys, through: :jersey_orders
end
