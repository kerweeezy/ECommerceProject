# frozen_string_literal: true

class RemoveFKey < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, name: :jersey_id
  end
end
