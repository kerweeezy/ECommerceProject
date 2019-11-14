# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :province

  validates :name, :email, :phone, :postalcode, :address, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
