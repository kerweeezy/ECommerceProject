# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :jerseys

  has_one_attached :image

  validates :name, presence: true

  # def thumbnail
  #   image.variant(resize: '300x300!').processed
  # end
end
