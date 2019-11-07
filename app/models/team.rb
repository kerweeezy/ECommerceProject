# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :jerseys

  has_one_attached :image

  validates :name, presence: true
end
