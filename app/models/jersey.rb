# frozen_string_literal: true

class Jersey < ApplicationRecord
  belongs_to :team

  has_one_attached :img

  validates :name, :fullName, :description, :price, presence: true
end
