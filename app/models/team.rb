# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :jerseys

  validates :name, presence: true
end
