# frozen_string_literal: true

class Jersey < ApplicationRecord
  belongs_to :team

  has_one_attached :image

  validates :name, :name, :description, :price, presence: true
end
