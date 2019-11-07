# frozen_string_literal: true

class RemoveColumns < ActiveRecord::Migration[6.0]
  def self.up
    def self.up
      remove_column :jerseys, :image
    end
  end
end
