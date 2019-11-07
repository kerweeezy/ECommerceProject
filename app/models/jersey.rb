# frozen_string_literal: true

class Jersey < ApplicationRecord
  belongs_to :team

  validates :name, :fullName, :description, :price, presence: true
end
