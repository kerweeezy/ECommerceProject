# frozen_string_literal: true

class RemoveRef < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :jersey, index: true
  end
end
